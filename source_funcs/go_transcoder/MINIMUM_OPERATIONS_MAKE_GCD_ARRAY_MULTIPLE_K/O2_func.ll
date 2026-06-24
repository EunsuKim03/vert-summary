define i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %n, i64 %k) local_unnamed_addr #4 !dbg !3029 {
entry:
    #dbg_value(ptr %a.data, !3038, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3043)
    #dbg_value(i64 %a.len, !3038, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3043)
    #dbg_value(i64 %a.cap, !3038, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3043)
    #dbg_value(i64 %n, !3039, !DIExpression(), !3043)
    #dbg_value(i64 %k, !3040, !DIExpression(), !3043)
    #dbg_value(i64 0, !3041, !DIExpression(), !3044)
    #dbg_value(i64 0, !3042, !DIExpression(), !3045)
  %0 = icmp sgt i64 %n, 0, !dbg !3046
  br i1 %0, label %for.body.lr.ph, label %for.done, !dbg !3047

for.body.lr.ph:                                   ; preds = %entry
  %1 = icmp eq i64 %k, 0
  br label %for.body, !dbg !3047

for.body:                                         ; preds = %for.body.lr.ph, %if.done
  %2 = phi i64 [ 0, %for.body.lr.ph ], [ %11, %if.done ]
  %3 = phi i64 [ 0, %for.body.lr.ph ], [ %10, %if.done ]
    #dbg_value({ ptr, i64, i64 } poison, !3038, !DIExpression(), !3048)
    #dbg_value(i64 %2, !3042, !DIExpression(), !3049)
  %exitcond.not = icmp eq i64 %2, %a.len, !dbg !3050
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3050

lookup.next:                                      ; preds = %for.body
  %4 = getelementptr inbounds nuw i64, ptr %a.data, i64 %2, !dbg !3050
  %5 = load i64, ptr %4, align 8, !dbg !3050
  %.not1 = icmp ne i64 %5, 1, !dbg !3051
    #dbg_value({ ptr, i64, i64 } poison, !3038, !DIExpression(), !3052)
    #dbg_value(i64 %2, !3042, !DIExpression(), !3053)
    #dbg_value(i64 %k, !3040, !DIExpression(), !3054)
  %6 = icmp sgt i64 %5, %k
  %or.cond = select i1 %.not1, i1 %6, i1 false, !dbg !3047
    #dbg_value(i64 %3, !3041, !DIExpression(), !3055)
    #dbg_value(i64 %3, !3041, !DIExpression(), !3056)
  br i1 %or.cond, label %lookup.next8, label %lookup.next18, !dbg !3047

lookup.next8:                                     ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } poison, !3038, !DIExpression(), !3057)
    #dbg_value(i64 %2, !3042, !DIExpression(), !3058)
    #dbg_value(i64 %k, !3040, !DIExpression(), !3059)
  br i1 %1, label %divbyzero.throw, label %divbyzero.next14, !dbg !3060

divbyzero.next14:                                 ; preds = %lookup.next8
    #dbg_value(i64 %k, !3040, !DIExpression(), !3061)
    #dbg_value({ ptr, i64, i64 } poison, !3038, !DIExpression(), !3062)
    #dbg_value(i64 %2, !3042, !DIExpression(), !3063)
  %7 = srem i64 %5, %k, !dbg !3060
  %8 = sub i64 %k, %7, !dbg !3064
    #dbg_value(i64 %7, !3065, !DIExpression(), !3071)
    #dbg_value(i64 %8, !3070, !DIExpression(), !3073)
  %x.y.i = tail call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775807, -9223372036854775808) %7, i64 %8), !dbg !3074
  %9 = add i64 %x.y.i, %3, !dbg !3075
    #dbg_value(i64 %9, !3041, !DIExpression(), !3076)
  br label %if.done, !dbg !3047

if.done:                                          ; preds = %lookup.next18, %divbyzero.next14
  %10 = phi i64 [ %9, %divbyzero.next14 ], [ %13, %lookup.next18 ], !dbg !3044
  %11 = add nuw nsw i64 %2, 1, !dbg !3077
    #dbg_value(i64 %11, !3042, !DIExpression(), !3078)
    #dbg_value(i64 %n, !3039, !DIExpression(), !3079)
  %exitcond10.not = icmp eq i64 %11, %n, !dbg !3046
  br i1 %exitcond10.not, label %for.done, label %for.body, !dbg !3047

lookup.next18:                                    ; preds = %lookup.next
    #dbg_value(i64 %k, !3040, !DIExpression(), !3080)
    #dbg_value({ ptr, i64, i64 } poison, !3038, !DIExpression(), !3081)
    #dbg_value(i64 %2, !3042, !DIExpression(), !3082)
  %12 = add i64 %3, %k, !dbg !3083
  %13 = sub i64 %12, %5, !dbg !3084
    #dbg_value(i64 %13, !3041, !DIExpression(), !3085)
  br label %if.done, !dbg !3047

for.done:                                         ; preds = %if.done, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %10, %if.done ], !dbg !3044
    #dbg_value(i64 %.lcssa, !3041, !DIExpression(), !3086)
  ret i64 %.lcssa, !dbg !3087

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3050
  unreachable, !dbg !3050

divbyzero.throw:                                  ; preds = %lookup.next8
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3060
  unreachable, !dbg !3060
}
