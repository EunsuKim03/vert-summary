define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3041)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3041)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3041)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3042)
  %0 = icmp slt i64 %n, 1, !dbg !3043
  br i1 %0, label %common.ret, label %if.done, !dbg !3044

common.ret:                                       ; preds = %entry, %for.done
  %common.ret.op = phi i64 [ %x.y.i1, %for.done ], [ 0, %entry ]
  ret i64 %common.ret.op, !dbg !3044

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3045)
  %1 = icmp eq i64 %arr.len, 0, !dbg !3046
  br i1 %1, label %lookup.throw, label %lookup.next, !dbg !3046

lookup.next:                                      ; preds = %if.done
  %2 = load i64, ptr %arr.data, align 8, !dbg !3046
    #dbg_value(i64 %2, !3036, !DIExpression(), !3047)
    #dbg_value(i64 0, !3037, !DIExpression(), !3048)
    #dbg_value(i64 1, !3038, !DIExpression(), !3049)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3050)
  %.not6 = icmp eq i64 %n, 1, !dbg !3051
  br i1 %.not6, label %for.done, label %for.body.preheader, !dbg !3044

for.body.preheader:                               ; preds = %lookup.next
  %3 = add i64 %arr.len, -1, !dbg !3052
  %4 = add nsw i64 %n, -2, !dbg !3052
  %.not.not = icmp ugt i64 %3, %4, !dbg !3052
  br i1 %.not.not, label %for.body, label %lookup.throw3, !dbg !3052

for.body:                                         ; preds = %for.body.preheader, %for.body
  %5 = phi i64 [ %11, %for.body ], [ 1, %for.body.preheader ]
  %6 = phi i64 [ %7, %for.body ], [ 0, %for.body.preheader ]
  %7 = phi i64 [ %10, %for.body ], [ %2, %for.body.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3053)
    #dbg_value(i64 %5, !3038, !DIExpression(), !3054)
  %8 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %5, !dbg !3052
  %9 = load i64, ptr %8, align 8, !dbg !3052
    #dbg_value(i64 %6, !3037, !DIExpression(), !3055)
    #dbg_value(i64 %7, !3036, !DIExpression(), !3056)
    #dbg_value(i64 %6, !3057, !DIExpression(), !3063)
    #dbg_value(i64 %7, !3062, !DIExpression(), !3065)
  %x.y.i = tail call i64 @llvm.smin.i64(i64 %6, i64 %7), !dbg !3066
  %10 = add i64 %9, %x.y.i, !dbg !3067
    #dbg_value(i64 %10, !3039, !DIExpression(), !3068)
    #dbg_value(i64 %10, !3036, !DIExpression(), !3069)
    #dbg_value(i64 %7, !3040, !DIExpression(), !3070)
    #dbg_value(i64 %7, !3037, !DIExpression(), !3071)
  %11 = add nuw nsw i64 %5, 1, !dbg !3072
    #dbg_value(i64 %11, !3038, !DIExpression(), !3073)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3050)
  %exitcond.not = icmp eq i64 %11, %n, !dbg !3051
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3044

for.done:                                         ; preds = %for.body, %lookup.next
  %.lcssa3 = phi i64 [ %2, %lookup.next ], [ %10, %for.body ], !dbg !3047
  %.lcssa = phi i64 [ 0, %lookup.next ], [ %7, %for.body ], !dbg !3048
    #dbg_value(i64 %.lcssa3, !3036, !DIExpression(), !3074)
    #dbg_value(i64 %.lcssa, !3037, !DIExpression(), !3075)
    #dbg_value(i64 %.lcssa3, !3057, !DIExpression(), !3076)
    #dbg_value(i64 %.lcssa, !3062, !DIExpression(), !3078)
  %x.y.i1 = tail call i64 @llvm.smin.i64(i64 %.lcssa3, i64 %.lcssa), !dbg !3079
  br label %common.ret, !dbg !3080

lookup.throw:                                     ; preds = %if.done
  tail call fastcc void @runtime.lookupPanic(), !dbg !3046
  unreachable, !dbg !3046

lookup.throw3:                                    ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3052
  unreachable, !dbg !3052
}
