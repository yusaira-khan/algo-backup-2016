__author__ = 'yusaira-khan'


def tsearch(leest, key, start = None, stop = None):
    ln = len(leest)
    if start is None:
        start = 0
    if stop is None:
        stop = ln
    # if ln == 0:
    #     return None
#stop has to be 1 greater than start
    if stop<=start:
        return  0
    mid = (stop + start) /2
    test = leest[mid]

    if test == key:
        return mid
    elif test < key:
        return tsearch(leest,key,start,mid) #doesn't search mid
    else:
        return tsearch(leest,key,mid+1,stop)


def rsearch(leest,key,start=None,stop=None):
    ln = len(leest)
    if start is None:
        start = 0
    if stop is None:
        stop = ln
    # if ln == 0:
    #     return None
    if stop<=start: return  0
    mid = (stop + start) /2
    test = leest[mid]
    if test==key:
        return key
    else:
        i=rsearch(leest,key,start,mid)
        if i is None:
            return rsearch(leest,key,mid+1,stop)
        else:
            return i
