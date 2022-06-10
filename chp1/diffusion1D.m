close all
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
sD = 10; % stage dimension
sOs = [sD, 1]; % size of stage
sOb = [sD+2, 1]; % size of buffer

stage = rand(sOs)<0.2; % stage 
buffer = zeros(sOb); % buffer

%% rendering
subplot(row, col, 1)
imshow(stage, [0,1])

subplot(row, col, 2)
imshow(buffer, [0,1])

%%%%%%%%%%%%%%%%%
%%% loop %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%
for tLoop = 1:iter
    tLoop  
    %% time evolution

    %% interacation 
    
    %% boundary processing
    
    %% rendering
end
