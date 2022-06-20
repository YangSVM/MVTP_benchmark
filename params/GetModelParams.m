function ModelParams = GetModelParams()
%% 地图参数
ModelParams.x_min = -20;            
ModelParams.y_min = -20;
ModelParams.x_max = 20;
ModelParams.y_max = 20;
ModelParams.x_scale = ModelParams.x_max - ModelParams.x_min;
ModelParams.y_scale = ModelParams.y_max - ModelParams.y_min;
ModelParams.xy_resolution = 0.1;            
ModelParams.tf_max = 50.0;          % 最久路程时间

ModelParams.trust_radius_min = 3.3; % 最小转弯半径
ModelParams.j_max = 1.5;            % ？这是啥
ModelParams.K = 4;

ModelParams.solver_options = struct( ...
    'linear_solver', 'mumps', ... % set to ma27 if HSL is acquired
    'max_cpu_time', 1000, ...
    'tol', 1e-3, ...
    'bound_push', 0.01, ...
    'mu_strategy', 'adaptive', ...
    'print_level', 3);

%% ASCO算法参数
ModelParams.initial_rlb = -4;       % 初始圆环下界
ModelParams.initial_rub = 2;        % 初始圆环上界
ModelParams.decrease_step = 2;      % 下界增长步长。alpha
ModelParams.increase_step_lb = 2;   % 下界缩减步长。beta
ModelParams.increase_step_ub = 0.1; % 上界增长步长。
ModelParams.iter_max = 10;          % 求解reduced NLP的最大循环次数

ModelParams.nfe = 100;          % 时间离散化，采样数目
ModelParams.nv = 16;            % 车辆数目  
ModelParams.nobs = 8;           % 障碍物数量

end