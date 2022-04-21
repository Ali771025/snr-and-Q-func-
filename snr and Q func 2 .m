snr=(-6:0.1:22);
x=10.^(snr./10);
for m=[2,4,8,16] 
s=(6.*log2(m)./(m.^2-1)).*x;
Q=1/2.*erfc(((s).^0.5)./2^0.5);
semilogy(snr,Q);
hold on;
set(gca,'YLim',[10^-6 0.1],'XLim',[-6 22],'XTick',-6:2:22)
end