function mvtp = LoadMVTP(folder, fileid)

if ~ischar(fileid)
    fileid = num2str(fileid);
end
filename = sprintf("%s/%s.mat", folder, fileid);
% 加载起始和结束目标位姿，以及障碍物位置
load(filename, 'profiles', 'obstacles');

Params = GetModelParams();
mvtp.profiles = profiles(1:Params.nv, :);
mvtp.obstacles = obstacles(1:Params.nobs, :);   % 仅提取有限个障碍物8/16

end
