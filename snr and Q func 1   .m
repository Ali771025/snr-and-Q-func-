snr=(0:0.1:14);
x=10.^(snr./10);
Q=1/2.*erfc(((x).^0.5)./2^0.5);
semilogy(snr,Q);
hold on
Q=1/2.*erfc(((2.*x).^0.5)./2^0.5);
semilogy(snr,Q);
set(gca,'YLim',[10^-6 0.1])

 