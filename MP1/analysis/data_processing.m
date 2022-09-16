loadspice('simulation.txt');

periods = zeros(1,length(time));
for i=1:length(time)
    t = time{1,i};
    v = vout{1,i};
    periods(i)=max(diff(t((diff(v)./diff(t))>1000)));
end
min(periods)
max(periods)