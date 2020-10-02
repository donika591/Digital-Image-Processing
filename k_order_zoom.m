%k order zooming function
function out=k_order_zoom(img,K)
    s=(K*(size(img)-1)+1);
    
    if ~ismatrix(img)
        s=[s(1:end-1) size(img,ndims(img))];
    end
    
    out=zeros(s,class(img));
    out(1:K:end,1:K:end,:)=img;  
    img=cast(img,'double');
   
    cols1=img(:,1:end-1,:);
    cols2=img(:,2:end,:);
    filter=cols2>=cols1;
    
    for k=1:K-1
        temp=(cols1+k*floor((cols2-cols1)/K)).*filter;
        out(1:K:end,1+k:K:end,:)=temp+(cols2+(K-k)*floor((cols1-cols2)/K)).*(~filter);
    end

    cols2=double(out(1+K:K:end,:,:));
    cols1=double(out(1:K:end-1,:,:));
    filter=cols2>=cols1;
    for k=1:K-1
        temp=(cols1+k*floor((cols2-cols1)/K)).*filter;
        out(1+k:K:end,:,:)=temp+(cols2+(K-k)*floor((cols1-cols2)/K)).*(~filter);
    end   
end
