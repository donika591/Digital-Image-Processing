%zero order zooming function
function out=zero_order_zooming(img)
    				sz=(2*size(img)-1);
    				if ~ismatrix(img)
        				sz=[sz(1:end-1) size(img,ndims(img))];
    				end
        		      out=zeros(sz,class(img));
        			out(1:2:end,1:2:end,:)=img;
        			out(1:2:end,2:2:end,:)=floor((double(img(:,1:end-1,:))+double(img(:,2:end,:)))/2);
        			out(2:2:end,:,:)=floor((double(out(1:2:end-1,:,:))+double(out(3:2:end,:,:)))/2);
end
