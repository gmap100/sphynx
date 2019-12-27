% Minh Anh Pham
% 9 November, 2019
% W7: Halloween Competition
% Sphynx game (answer 3 riddles correctly to get reward, or DIE)

close all;
clear all;
clc;

%% draw sphynx

figure

% first (left-most) hoof

plot([-0.5, -0.5, 8], [4.5, 0, 0], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);

hold on

% lines on foot

expCurve(-5, 0.3, 6, 1, 2.718, 2, 2.5);
expCurve(-6, 0.4, 8, 1, 2.718, 2, 1);
expCurve(-6, 0.4, 5.5, 1, 2.718, 1, 4.5);

% first (left-most) leg

plot([5.9, 8], [5.899, 20], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);

expCurve(-1, 2, 8, 1, 2.718, 0.5, -1);

plot([10, 17], [1.7, 17], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
plot([8.8, 16], [20, 18], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
plot([8, 6], [20, 25], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);

% throat

cosCurve(-1, 3, 2.9, 0.5, 1, 3, 24.5);

plot([1.94, 0.5], [24.29, 26], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);

% tongue

plot([0.5, 5], [26, 29], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);

rotatedCurve((-1.9:1/1000:4.9), (1.2 * sin((-1.9:1/1000:4.9) / 1.5)), 35, -1.1, 25);

plot([0.5 -2], [26 23], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);

% first (lower) face

rotatedCurve((2.51:1/1000:4), (2.5 * sin(2 * (2.51:1/1000:4))), -70, 1.3, 31.9);

expCurve(-2.2, 1, -1, 1, 0.5, 1, 28.2);

expCurve(-12, -2, 8.8, -0.1, 0.5, 0.51, 39.7);

% whiskers

plot([-2.5, 0.6], [33, 34.2], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
plot([-2.1, 0.87], [31.8, 33], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
plot([-1.5, 1.4], [30.65, 31.8], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
plot([-0.6, 2], [29.65, 30.63], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);

% eye

ellipse(3, 1.4, 0, 2*pi, 50, 4, 35.5);

% cheekbones

arc(2, 90, 280, 1, 1, 8, 32);
arc(20, 10, -15, 1, 1, -10.5, 30);

% ear

arc(4.5, 48, 150, 1, 1, 11.5, 35);
arc(3.5, 0, -105, 1, 1, 11, 38.36);

% neck & face outline

plot([6.753 6.5], [39.48 44.8], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
plot([6.5, 1.5], [44.8, 45.8], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
plot([1.5, 1.5], [45.8, 50.2], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
plot([1.5, -0.3], [50.2, 52.4], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
plot([-0.3, 2.9], [52.4, 59], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);

% mouth & nostril & eye

arc(1.2, 100, -100, 1, 1, 1.7, 48);
arc(1.5, 105, -90, 1, 1, 1.3, 52.5);
ellipse(3.5, 1.5, 0, 2*pi, 50, 6, 55);

% ear

arc(1, 140, -65, 1.3, 2.2, 13, 54.5);
arc(1.5, 150, -75, 1.3, 2.3, 13.1, 54.5);

% cheekbone

arc(4, 20, -115, 1, 1.1, 9.3, 49);

% hat

arc(1.5, 85, 275, 1.8, 2.3, 2.7, 62.4);
plot([2.935, 3.2], [65.84, 62.4], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);

% outline

% rotated sine curve
rotatedCurve((-pi+2.4:1/1000:pi+0.1), (7 * sin(0.5*(-pi+2.4:1/1000:pi+0.1))), -20, 4.75, 64.6);
% rotated arc
rotatedCurve((4.8 * cosd(linspace(-25, 197, 100))), (6 * sind(linspace(-25, 197, 100))), -27, 15.1, 69.55);
% rotated sine curve
rotatedCurve((-pi:1/1000:pi-3.3), (7 * sin(-(-pi:1/1000:pi-3.3) / 2)), -20, 18.4, 57.7);
plot([18.44, 21], [58.28, 61], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
arc(1.5, 90, -75, 1.2, 2.2, 21, 57.7);
plot([21.47, 18.5], [54.51, 53], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);

% lines on hat
plot([4.3, 17.44], [62.47, 58.28], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
plot([3.7, 10.85], [58.96, 56.7], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
plot([15.8, 18.5], [55, 54], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);

% bottom of hat
plot([18.5, 18.7], [53, 48], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
plot([18.7, 24.3], [48, 45.5], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);

% smol curve on hat
rotatedCurve((-0.6:1/1000:pi+0.95), (7 * sin(-(-0.6:1/1000:pi+0.95) / 1.6)), -10, 17.2, 51);
% tol curve on hat
rotatedCurve((-0.7:1/1000:pi+3.2), (9 * sin(-(-0.7:1/1000:pi+3.2) / 2.4)), -10, 16.1, 51.6);

% torso

arc(6, 115, 230, 1.2, 2.2, 21.5, 29);
% rotated tan curve
rotatedCurve((-pi/2+0.085:1/1000:pi/2-0.085), (tan(-pi/2+0.085:1/1000:pi/2-0.085)), 8, 24.5, 32.7);

% 2nd leg (from left)

plot([19, 26], [18, 20], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
plot([17, 25, 25, 17.5, 17.5], [17, 5.8, 5.8, 5.8, 5.8], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
plot([17.5, 17.5, 30, 32, 28], [5.8, 0, 0, 3, 20.5], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);

expCurve(-6, 1.2, 27, 1, 1.7, 2, 3.5);
expCurve(-7, 2.8, 27, 1, 1.3, 2, 1.3);

% belly

arc(20, -60, -110, 1.2, 1.2, 36.2, 43);

% 3rd leg

plot([48.2, 49, 42, 42, 53], [22.2, 6.5, 6.5, 0, 0], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
rotatedCurve((-pi/2+0.085:1/1000:pi/2-0.085), (-tan(-pi/2+0.085:1/1000:pi/2-0.085)), -28, 56.5, 10);
expCurve(-6, 1.2, 50, 1, 1.7, 2, 3);
expCurve(-4, 2.8, 50, 1, 1.3, 2, 1.3);
plot([48.2, 49.5], [23, 30], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);

% last leg

plot([60.7, 80, 74, 74, 86], [21.06, 5.8, 5.8, 0, 0], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
arc(5, 45, -45, 1, 2, 81.5, 4);
rotatedCurve((-pi/2+0.039:1/1000:pi/2-0.7), (-tan(-pi/2+0.039:1/1000:pi/2-0.7)), 25, 83.75, 11.77);
expCurve(-1, 6, 76.5, 0.05, 2, 1, 3.2);
expCurve(-1, 6, 78, 0.045, 2, 1, 2.4);
expCurve(-1, 6, 79, 0.045, 2, 1, 1.3);

% bottom

rotatedCurve((-8.5:1/1000:7), (0.01 .* 2 .^ (-8.5:1/1000:7)), 50, 66.5, 28.5);
arc(0.7, 90, 270, 1, 2.5, 70, 37.5);

% tail

% rotated arc
rotatedCurve((4.8 * cosd(linspace(200, 300, 100))), (16 * sind(linspace(200, 300, 100))), 40, 71, 46.5);
plot([81.75, 78.5], [37.43, 54.10], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
rotatedCurve((4.5 * cosd(linspace(80, 200, 100))), (5.55 * sind(linspace(80, 200, 100))), 0, 82.9, 55);
rotatedCurve((8 * cosd(linspace(200, 297, 100))), (16 * sind(linspace(200, 297, 100))), 40, 73.6, 43.7);
plot([85.56, 82.6], [35, 52], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
rotatedCurve((1.2 * cosd(linspace(90, 200, 100))), (2.5 * sind(linspace(90, 200, 100))), 0, 83.8, 52.7);
rotatedCurve((3.344 * cosd(linspace(90, -87, 100))), (2.64 * sind(linspace(90, -87, 100))), 0, 83.5, 57.9);

% back

arc(3, 20, 100, 2.5, 2.1, 64.2, 37);
plot([63, 39], [43.22, 40], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);

% wing outline

arc(8, 87, 190, 1.2, 2, 38, 24);
plot([39, 64], [40, 45], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
arc(9, 80, -70, 0.7, 1.6, 61.8, 58.5);
plot([63.06, 24.3], [72.61, 45.5], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);

% feathers

% torso
plot([25, 28], [24.6, 24.8], [24.8, 27.8], [27, 27.1], [24.2, 28.3], [29.1, 29.3], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
plot([24.6, 29], [31.4, 31.7], [25.9, 29.6], [33.9, 34.1], [26, 31], [36.5, 36.7], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
% wing (bottom)
plot([26, 39], [38.5, 43.5], [41, 55], [43, 47], [57, 64], [47, 48], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
% wing (middle LHS)
plot([26, 40], [41.5, 47.7], [41, 55], [47, 51], [41, 55.1], [50.5, 56.1], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
% wing (middle RHS)
plot([57, 65.5], [50, 51], [57, 66], [53, 55], [57, 66], [56.5, 59.5], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
% wing (top)
plot([26, 40], [44.5, 52], [41, 55], [54, 61.9], [56.3, 66], [60, 64], [56, 64], [64.5, 69], "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);

% END DRAWING SPHYNX

%% limits x & y of figure

ylim([0 160]);
xlim([-50 135]);

%% riddle game

% title
title("SPHYNX RIDDLE GAME", "FontSize", 20);

% explanation
dim = [0.16 0.7 0.7 0.15];
deathMsg = ["O brave travellers from far and wide,", "answer the riddles correctly or die"];
annotation("textbox", dim, "String", deathMsg, "EdgeColor", "w", "FontSize", 16, "HorizontalAlignment", "center");

pause(3);

% flag that turns to 1 when user gives a wrong answer
quitRiddles = 0;

while quitRiddles == 0
    
    % first riddle
    answer1 = questdlg("Q1: It walks on 4 legs in the morning, 2 legs at noon, and 3 legs in the evening. What is it?", ...
      "First riddle", ...
      "Trees", "Aliens", "Humans", "Trees");
      
      % if user answers correctly
      switch answer1
        case "Humans"
          answer2 = questdlg("Q2: The most impressive boundary is not a wall. It is not a manufactured thing at all. Moving towards it will not reduce the gap, and nothing marks its presence on a map. What is it?", ..."
            "Second riddle", ...
            "Attitude", "Fog", "The horizon", "Attitude");
          
          % second riddle
          switch answer2
            case "The horizon"
              answer3 = questdlg("Q3: How are Kim Kardashian and Kylie Jenner related?", ...
                "Third riddle", ...
                "They're step-sisters", "They're half-sisters", "They're sisters", "(a) They're step-sisters");
              
              % third riddle
              switch answer3
                case "They're half-sisters"
                  msgOutput("Your life is spared by the sphynx", "Wait for your parting gift to appear...");
                  pause(5);
                  web("http://bitly.com/98K8eH");
                  quitRiddles = 1;
                  
                % DEATH
                otherwise
                  deathMsgOutput()
                  quitRiddles = 1;
              end
              
            % DEATH
            otherwise
              deathMsgOutput()
              quitRiddles = 1;
          end
        
        % DEATH
        otherwise
          deathMsgOutput()
          quitRiddles = 1;
      end
end

% END RIDDLING

%% functions (mainly for drawing the sphynx)

% draw curved lines using exponential functions
function expCurve(xMin, xMax, xPos, yMultiple, basePower, xMultiple, yPos)
  x = xMin:1/1000:xMax;
  plot(x + xPos, yMultiple * (basePower.^(xMultiple .* x)) + yPos, "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
end

% draw cos curves
function cosCurve(xMin, xMax, xPos, cosMultiple, xMultiple, xAdd, yPos)
  x = xMin:1/1000:xMax;
  plot(x + xPos, cosMultiple * cos(xMultiple * x + xAdd) + yPos, "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
end

% rotate curves
function rotatedCurve(xLimits, yFunction, rotAngleDeg, xPos, yPos)
  data = [xLimits; yFunction];
  rotMatrix = [cosd(rotAngleDeg) -sind(rotAngleDeg); sind(rotAngleDeg) cosd(rotAngleDeg)]; % rotation matrix
  rotFunction = rotMatrix * data; % multiply rotation matrix by x & y coordinates
  plot(rotFunction(1,:) + xPos, rotFunction(2,:) + yPos, "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
end

% draw ellipses
function ellipse(xStretch, yStretch, xLim1, xLim2, xLim3, xPos, yPos)
  x = linspace(xLim1, xLim2, xLim3);
  plot(xStretch * cos(x) + xPos, yStretch * sin(x) + yPos, "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
end

% draw arcs
function arc(radius, angleLim1, angleLim2, xMultiple, yMultiple, xPos, yPos)
  angle = linspace(angleLim1, angleLim2, 100);
  x = radius * xMultiple * cosd(angle);
  y = radius * yMultiple * sind(angle);
  plot(x + xPos, y + yPos, "LineWidth", 1.5, "Color",[0.9290 0.6940 0.1250]);
end

% message to user when they get an answer wrong (annotation on figure)
function deathMsgOutput()
    dim = [0.16 0.53 0.7 0.15];
    deathMsg = ["WRONG!", "You are eaten by the sphynx :("];
    annotation("textbox", dim, "String", deathMsg, "EdgeColor", "w", "FontSize", 16, "HorizontalAlignment", "center", "Color", [0.6350 0.0780 0.1840]);
    
    plot([3.335, 9], [58, 60], "LineWidth", 2, "Color",[0.9290 0.6940 0.1250]);
    plot([1.153, 6], [37, 40], "LineWidth", 2, "Color",[0.9290 0.6940 0.1250]);
end

% message to user in general (annotation on figure)
function msgOutput(string1, string2)
    dim = [0.15 0.53 0.7 0.15];
    msg = [string1, string2];
    annotation("textbox", dim, "String", msg, "EdgeColor", "w", "FontSize", 16, "HorizontalAlignment", "center", "Color", [0.4660 0.6740 0.1880]);
end

%% References

% Sphynx image: Himasaram. ?NeoHittiteSphinx.? Wikipedia, 27 Sept. 2005, commons.wikimedia.org/wiki/File:NeoHittiteSphinx.svg.
% Riddle #1: N/A, N/A. ?Four Legs in the Morning.? Riddles and Brain Teasers, 10 Dec. 2013, riddlesbrainteasers.com/four-legs-morning/.
% Riddle #2: Daystrom, Sef. ?The Most Impressive Boundary.? Riddles and Brain Teasers, 20 Mar. 2019, riddlesbrainteasers.com/the-most-impressive-boundary/.
% Rotated ellipse: Abbasi, Nasser M. ?How to Draw an Ellipse?? How to Solve Basic Engineering and Mathematics Problems Using Mathematica, Matlab and Maple, 2019, www.12000.org/my_notes/mma_matlab_control/KERNEL/KEse165.htm.


