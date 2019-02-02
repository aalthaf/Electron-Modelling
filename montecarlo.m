% 
% 
% 
% 
% 
% 
% 
% %x = x + vth * t

global C



C.q_0 = 1.60217653e-19;             % electron charge
C.hb = 1.054571596e-34;             % Dirac constant
C.h = C.hb * 2 * pi;                    % Planck constant
C.m_0 = 9.10938215e-31;             % electron mass
C.kb = 1.3806504e-23;               % Boltzmann constant
C.eps_0 = 8.854187817e-12;          % vacuum permittivity
C.mu_0 = 1.2566370614e-6;           % vacuum permeability
C.c = 299792458;                    % speed of light
C.g = 9.80665; %metres (32.1740 ft) per s²


nSim = 1000;
noe = 20;
r2 = randi(360,noe,1);
xbound = 200
ybound = 100
x = randi(200,noe,1);
y = randi(100,noe,1);
vth = sqrt(2*(C.kb * 300)/C.m_0)
vx = vth * cos(r2) 
vy = vth * sin(r2)

for n = 1:nSim
    xc = x % x copy
    yc = y % y copy
    
    
    %Reflecting for y bounds%
    temp = y >= ybound 
    temp1 = y < ybound 
    
    
    temp = temp * -1
    
    tempHigher = temp + temp1
    
    
    temp2 = y <= 0
    temp3 = y > 0
    
    temp2 = temp2 * -1
    tempLower = temp2 + temp3
   
    vy = vy .* tempHigher
    vy = vy .* tempLower
    
    %%%%%%%%%%%%%%%%%%%
    
    % when x > 200%%%%%
    tempx1 = x <= 200
    
    x = x .* tempx1
    %%%%%%%%%%%%%%%%%%
    
    %%When x goes less than zero , come from 200 %%%%%
    
    tempx2 = x < -0.1
    
    
    tempx2 = tempx2 * 200
    tempxFinal = x + tempx2
    
    x = tempxFinal
    
    %%%%%%%%%%%%%%%%%%%
    dx = vx * (1/100000)
    dy = vy * (1/100000)
    
    x = x + dx;
    y = y + dy;
    
    plot(x,y,'.r');
    axis([0 200 0 100])
    pause(0.2)
    hold on
   
end

%vth = 

