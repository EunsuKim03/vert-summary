define i64 @f_gold(ptr nocapture readonly %high.data, i64 %high.len, i64 %high.cap, ptr nocapture readonly %low.data, i64 %low.len, i64 %low.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %high.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3037)
    #dbg_value(i64 %high.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3037)
    #dbg_value(i64 %high.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3037)
    #dbg_value(ptr %low.data, !3035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3037)
    #dbg_value(i64 %low.len, !3035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3037)
    #dbg_value(i64 %low.cap, !3035, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3037)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3037)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3038)
  %0 = icmp slt i64 %n, 1, !dbg !3039
  br i1 %0, label %common.ret4, label %if.done, !dbg !3040

common.ret4:                                      ; preds = %entry, %lookup.next4
  %common.ret4.op = phi i64 [ %x.y.i, %lookup.next4 ], [ 0, %entry ]
  ret i64 %common.ret4.op, !dbg !3040

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3041)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3042)
  %1 = add nsw i64 %n, -1, !dbg !3043
  %.not = icmp ult i64 %1, %high.len, !dbg !3044
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3044

lookup.next:                                      ; preds = %if.done
  %2 = getelementptr inbounds nuw i64, ptr %high.data, i64 %1, !dbg !3044
  %3 = load i64, ptr %2, align 8, !dbg !3044
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3045)
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3046)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3047)
  %4 = add nsw i64 %n, -2, !dbg !3048
  %5 = tail call i64 @f_gold(ptr %high.data, i64 %high.len, i64 %high.cap, ptr %low.data, i64 %low.len, i64 %low.cap, i64 %4), !dbg !3049
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3050)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3051)
  %.not2 = icmp ult i64 %1, %low.len, !dbg !3052
  br i1 %.not2, label %lookup.next4, label %lookup.throw3, !dbg !3052

lookup.next4:                                     ; preds = %lookup.next
  %6 = add i64 %5, %3, !dbg !3053
  %7 = getelementptr inbounds nuw i64, ptr %low.data, i64 %1, !dbg !3052
  %8 = load i64, ptr %7, align 8, !dbg !3052
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3054)
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3055)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3056)
  %9 = tail call i64 @f_gold(ptr nonnull %high.data, i64 %high.len, i64 %high.cap, ptr %low.data, i64 %low.len, i64 %low.cap, i64 %1), !dbg !3057
  %10 = add i64 %9, %8, !dbg !3058
    #dbg_value(i64 %6, !3059, !DIExpression(), !3065)
    #dbg_value(i64 %10, !3064, !DIExpression(), !3065)
    #dbg_value(i64 %6, !3059, !DIExpression(), !3067)
    #dbg_value(i64 %10, !3064, !DIExpression(), !3068)
  %x.y.i = tail call i64 @llvm.smax.i64(i64 %6, i64 %10), !dbg !3069
  br label %common.ret4, !dbg !3040

lookup.throw:                                     ; preds = %if.done
  tail call fastcc void @runtime.lookupPanic(), !dbg !3044
  unreachable, !dbg !3044

lookup.throw3:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3052
  unreachable, !dbg !3052
}
