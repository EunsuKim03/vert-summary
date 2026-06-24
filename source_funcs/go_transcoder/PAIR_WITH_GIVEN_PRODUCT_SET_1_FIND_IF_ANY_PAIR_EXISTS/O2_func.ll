define noundef i1 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3039)
    #dbg_value(i64 %x, !3036, !DIExpression(), !3039)
    #dbg_value(i64 0, !3037, !DIExpression(), !3040)
  %0 = add i64 %n, -1
  %1 = icmp sgt i64 %0, 0, !dbg !3041
  br i1 %1, label %for.body, label %common.ret, !dbg !3042

for.body:                                         ; preds = %entry, %for.done
  %2 = phi i64 [ %14, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %2, !3038, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3043)
    #dbg_value(i64 %2, !3037, !DIExpression(), !3044)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3045)
  %3 = icmp slt i64 %2, %n, !dbg !3046
  br i1 %3, label %for.body2.lr.ph, label %for.done, !dbg !3042

for.body2.lr.ph:                                  ; preds = %for.body
  %4 = add nsw i64 %2, 1, !dbg !3047
    #dbg_value(i64 %4, !3038, !DIExpression(), !3043)
  %.not3 = icmp ult i64 %4, %arr.len
  %5 = getelementptr inbounds i64, ptr %arr.data, i64 %4
  %umax = call i64 @llvm.umax.i64(i64 %2, i64 %arr.len), !dbg !3042
  br label %for.body2, !dbg !3042

for.body2:                                        ; preds = %for.body2.lr.ph, %if.done
  %6 = phi i64 [ %2, %for.body2.lr.ph ], [ %13, %if.done ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3048)
    #dbg_value(i64 %6, !3037, !DIExpression(), !3049)
  %exitcond.not = icmp eq i64 %6, %umax, !dbg !3050
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3050

lookup.next:                                      ; preds = %for.body2
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3051)
    #dbg_value(i64 %2, !3038, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3052)
  br i1 %.not3, label %lookup.next7, label %lookup.throw6, !dbg !3053

lookup.next7:                                     ; preds = %lookup.next
  %7 = getelementptr inbounds i64, ptr %arr.data, i64 %6, !dbg !3050
  %8 = load i64, ptr %7, align 8, !dbg !3050
  %9 = load i64, ptr %5, align 8, !dbg !3053
  %10 = mul i64 %9, %8, !dbg !3054
    #dbg_value(i64 %x, !3036, !DIExpression(), !3055)
  %11 = icmp eq i64 %10, %x, !dbg !3056
  br i1 %11, label %common.ret, label %if.done, !dbg !3042

common.ret:                                       ; preds = %for.done, %lookup.next7, %entry
  %12 = phi i1 [ false, %entry ], [ true, %lookup.next7 ], [ false, %for.done ]
  ret i1 %12, !dbg !3042

if.done:                                          ; preds = %lookup.next7
  %13 = add nsw i64 %6, 1, !dbg !3057
    #dbg_value(i64 %13, !3037, !DIExpression(), !3044)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3045)
  %exitcond19.not = icmp eq i64 %13, %n, !dbg !3046
  br i1 %exitcond19.not, label %for.done, label %for.body2, !dbg !3042

for.done:                                         ; preds = %if.done, %for.body
  %.lcssa = phi i64 [ %2, %for.body ], [ %n, %if.done ], !dbg !3040
  %14 = add i64 %.lcssa, 1, !dbg !3058
    #dbg_value(i64 %14, !3037, !DIExpression(), !3059)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3060)
  %15 = icmp slt i64 %14, %0, !dbg !3041
  br i1 %15, label %for.body, label %common.ret, !dbg !3042

lookup.throw:                                     ; preds = %for.body2
  tail call fastcc void @runtime.lookupPanic(), !dbg !3050
  unreachable, !dbg !3050

lookup.throw6:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3053
  unreachable, !dbg !3053
}
