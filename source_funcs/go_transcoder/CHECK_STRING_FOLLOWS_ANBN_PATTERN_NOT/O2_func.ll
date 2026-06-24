define noundef i1 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %str.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %str.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %str.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3039)
    #dbg_value(i64 %str.len, !3035, !DIExpression(), !3040)
    #dbg_value(i64 0, !3036, !DIExpression(), !3041)
  %0 = icmp sgt i64 %str.len, 0, !dbg !3042
  br i1 %0, label %lookup.next, label %for.done, !dbg !3043

lookup.next:                                      ; preds = %entry, %if.done
  %1 = phi i64 [ %4, %if.done ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3044)
    #dbg_value(i64 %1, !3036, !DIExpression(), !3045)
  %2 = getelementptr inbounds nuw i8, ptr %str.data, i64 %1, !dbg !3046
  %3 = load i8, ptr %2, align 1, !dbg !3046
  %.not2 = icmp eq i8 %3, 97, !dbg !3047
  br i1 %.not2, label %if.done, label %for.done, !dbg !3043

if.done:                                          ; preds = %lookup.next
  %4 = add nuw nsw i64 %1, 1, !dbg !3048
    #dbg_value(i64 %4, !3036, !DIExpression(), !3049)
    #dbg_value(i64 %str.len, !3035, !DIExpression(), !3050)
  %exitcond.not = icmp eq i64 %4, %str.len, !dbg !3042
  br i1 %exitcond.not, label %for.done, label %lookup.next, !dbg !3043

for.done:                                         ; preds = %if.done, %lookup.next, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %1, %lookup.next ], [ %str.len, %if.done ], !dbg !3051
    #dbg_value(i64 %.lcssa, !3036, !DIExpression(), !3052)
  %5 = shl nuw i64 %.lcssa, 1, !dbg !3053
    #dbg_value(i64 %str.len, !3035, !DIExpression(), !3054)
  %.not3 = icmp eq i64 %5, %str.len, !dbg !3055
  br i1 %.not3, label %for.loop2.preheader, label %common.ret, !dbg !3043

for.loop2.preheader:                              ; preds = %for.done
    #dbg_value(i64 %.lcssa, !3037, !DIExpression(), !3056)
    #dbg_value(i64 %str.len, !3035, !DIExpression(), !3057)
  %6 = icmp slt i64 %.lcssa, %str.len, !dbg !3058
  br i1 %6, label %for.body3.preheader, label %common.ret, !dbg !3043

for.body3.preheader:                              ; preds = %for.loop2.preheader
  %umax = call i64 @llvm.umax.i64(i64 %.lcssa, i64 %str.len), !dbg !3059
  br label %for.body3, !dbg !3059

common.ret:                                       ; preds = %lookup.next10, %for.loop2, %for.loop2.preheader, %for.done
  %common.ret.op = phi i1 [ false, %for.done ], [ true, %for.loop2.preheader ], [ false, %lookup.next10 ], [ true, %for.loop2 ]
  ret i1 %common.ret.op, !dbg !3043

for.loop2:                                        ; preds = %lookup.next10
  %7 = add i64 %8, 1, !dbg !3060
    #dbg_value(i64 %7, !3037, !DIExpression(), !3056)
    #dbg_value(i64 %str.len, !3035, !DIExpression(), !3057)
  %exitcond13.not = icmp eq i64 %7, %str.len, !dbg !3058
  br i1 %exitcond13.not, label %common.ret, label %for.body3, !dbg !3043

for.body3:                                        ; preds = %for.body3.preheader, %for.loop2
  %8 = phi i64 [ %7, %for.loop2 ], [ %.lcssa, %for.body3.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3061)
    #dbg_value(i64 %8, !3037, !DIExpression(), !3062)
  %exitcond12.not = icmp eq i64 %8, %umax, !dbg !3059
  br i1 %exitcond12.not, label %lookup.throw9, label %lookup.next10, !dbg !3059

lookup.next10:                                    ; preds = %for.body3
  %9 = getelementptr inbounds i8, ptr %str.data, i64 %8, !dbg !3059
  %10 = load i8, ptr %9, align 1, !dbg !3059
  %.not5 = icmp eq i8 %10, 98, !dbg !3063
    #dbg_value(i64 %8, !3037, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3060)
  br i1 %.not5, label %for.loop2, label %common.ret, !dbg !3043

lookup.throw9:                                    ; preds = %for.body3
  tail call fastcc void @runtime.lookupPanic(), !dbg !3059
  unreachable, !dbg !3059
}
