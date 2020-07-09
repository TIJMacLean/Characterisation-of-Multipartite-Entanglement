clear
clc

Answer = zeros(1000,4);

for r = 1:20000
    disp(r)
    Implementer1
    ImplementerAPP
    % ImplementerANN
    ImplementerBPP
    ImplementerCPP
    
%     disp('Measurement on A with positive')
%     disp(['sqrt is ' num2str(Answer1)])
%     disp('Measurement on A with negative')
%     disp(['sqrt is ' num2str(Answer2)])
%     disp('Measurement on B with positive')
%     disp(['sqrt is ' num2str(Answer3)])
%     disp('Measurement on C with positive')
%     disp(['sqrt is ' num2str(Answer4)])
    
    resTangle = (Concurrence(rhoABC))^2 - (Concurrence(rhoAB))^2 - (Concurrence(rhoAC))^2;
    
    Answer(r,1) = Answer1;
    Answer(r,2) = Answer3;
    Answer(r,3) = Answer4;
    Answer(r,4) = resTangle;
    Answer(r,5) = min([Answer1 Answer3 Answer4]);
    
end


scatter(Answer(:,5),Answer(:,4),3,'filled')
xlabel('Min LQU')
ylabel('Residual Tangle')