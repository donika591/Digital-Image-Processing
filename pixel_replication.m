%pixel replication function


function y = pixel_replication(x)
    y = zeros(size(x,1)*4, size(x,2)*4, size(x,3));
    
    for i=1:size(x,1)
        for j=1:size(x,2)
            for ii = (i-1)*4 + 1 : i*4
                for jj = (j-1)*4 + 1 : j*4
                    for c = 1:size(x,3)
                        y(ii,jj,c)=x(i,j,c);
                    end
                end
            end
        end
    end
end
