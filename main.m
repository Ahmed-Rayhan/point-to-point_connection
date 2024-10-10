clc;
clear all;
close all;


while true
    numComputers = input('Enter the number of computers (Enter 0 to exit): ');
    if numComputers == 0
        disp('Exiting the program.');
        break; % Exit the loop
    end
    if numComputers < 2
        disp('The number of computers must be at least 2. Please try again.');
        continue; 
    end

    adjacencyMatrix = ones(numComputers) - eye(numComputers);
    G = graph(adjacencyMatrix);

    figure;
    plot(G, 'Layout', 'circle', 'NodeLabel', {});

    title(['Point-to-Point Connections for n = ', num2str(numComputers)]);

    numConnections = (numComputers * (numComputers - 1)) / 2;

    disp(['Number of computers: ', num2str(numComputers)]);
    disp(['Number of connections: ', num2str(numConnections)]);

    annotation('textbox', [0.15, 0.01, 0.1, 0.1], 'String', ['Connections: ', num2str(numConnections)], 'EdgeColor', 'none');

end
