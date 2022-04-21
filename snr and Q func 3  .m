snr=(-4:0.1:24);
x=10.^(snr./10);
s=(2.*x).^0.5;
Q=0.5.*erfc((s./2^0.5));
semilogy(snr,Q);
hold on;
for m=[4,8,16,32] 
s=(2.*log2(m).*(sin(pi/m).^2)).*x;
Q=erfc(((s).^0.5)./2^0.5);
semilogy(snr,Q);
hold on;
set(gca,'YLim',[10^-6 1],'XLim',[-4 24],'XTick',-4:4:24)
end