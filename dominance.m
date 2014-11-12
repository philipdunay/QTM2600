function dominance()


maxTime = 10;
T       = [.5 -.866;.866 .5];
x_0     = [10;-10];


%% DO NOT EDIT ANYTHING BELOW THIS LINE
clc;
close all; figure; hold on; grid on

xx = linspace(-1e9,1e9,2);
[V,D] = eig(T)
if isreal(V) == 1
    plot(xx*V(1,1),xx*V(2,1),'k','LineWidth',2); 
    plot(xx*V(1,2),xx*V(2,2),'k','LineWidth',2); 
end

X = [];
x = x_0;
for i = 1:maxTime
    x = T*x;
    X = [X x];
end
X
plot(X(1,:),X(2,:),'r','LineWidth',2)
plot(X(1,:),X(2,:),'bo','MarkerFaceColor','b'); hold on
plot(X(1,1),X(2,1),'co','MarkerFaceColor','c')


bigx = max(abs(X(1,:)))
bigy = max(abs(X(2,:)))

axis([-bigx*1.1 bigx*1.1 -bigy*1.1 bigy*1.1])