%close all
clear

%%%%%%%%%%%%%%%%%%%
%%%% init %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%

%%% rendering parameters
row = 2;
col = 1;

%%% loop parameters
iter = 30;  % number of iteration

%%% stage parameters
sD = 20; % stage dimension
sOs = [sD, 1]; % size of stage
sOb = [sD+2, 1]; % size of buffer

%stage = rand(sOs); % stage 
stage = rand(sOs)<0.2; % stage 

buffer = zeros(sOb); % buffer
buf0 = buffer;

%% rendering
render_stete_macro

c = 1/3;
%%%%%%%%%%%%%%%%%
%%% loop %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%
for tLoop = 1:iter
    tLoop
    %sum(stage)
    %% time evolution
    buffer(1:end-2) = c*stage;
    buffer(2:end-1) = buffer(2:end-1) + c*stage;
    buffer(3:end) = buffer(3:end) + c*stage;
    
    stage = buffer(2:end-1);
    buffer = buf0;
    
    %% interacation 
    
    %% boundary processing
    
    %% rendering    
    render_stete_macro
    %pause(0.1)
end
