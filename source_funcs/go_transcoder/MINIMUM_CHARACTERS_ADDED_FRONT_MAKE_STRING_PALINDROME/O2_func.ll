define noundef i1 @f_gold(ptr nocapture readonly %s.data, i64 %s.len, i64 %s.cap) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %s.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %s.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %s.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3040)
    #dbg_value(i64 0, !3036, !DIExpression(), !3041)
    #dbg_value(i64 %s.len, !3035, !DIExpression(), !3042)
  %0 = add i64 %s.len, -1, !dbg !3043
    #dbg_value(i64 %0, !3038, !DIExpression(), !3044)
    #dbg_value(i64 0, !3037, !DIExpression(), !3045)
  %.not26 = icmp slt i64 %0, 0, !dbg !3046
  br i1 %.not26, label %common.ret, label %deref.next4, !dbg !3047

deref.next4:                                      ; preds = %entry, %deref.next12
  %1 = phi i64 [ %7, %deref.next12 ], [ %0, %entry ]
  %.sroa.speculated27 = phi i64 [ %6, %deref.next12 ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3048)
    #dbg_value(i64 %.sroa.speculated27, !3037, !DIExpression(), !3049)
  %exitcond.not = icmp eq i64 %.sroa.speculated27, %s.len, !dbg !3050
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3050

lookup.next:                                      ; preds = %deref.next4
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3051)
    #dbg_value(i64 %1, !3038, !DIExpression(), !3052)
  %.not5 = icmp ult i64 %1, %s.len, !dbg !3053
  br i1 %.not5, label %lookup.next10, label %lookup.throw9, !dbg !3053

lookup.next10:                                    ; preds = %lookup.next
  %2 = getelementptr inbounds i8, ptr %s.data, i64 %.sroa.speculated27, !dbg !3050
  %3 = load i8, ptr %2, align 1, !dbg !3050
  %4 = getelementptr inbounds i8, ptr %s.data, i64 %1, !dbg !3053
  %5 = load i8, ptr %4, align 1, !dbg !3053
  %.not6 = icmp eq i8 %3, %5, !dbg !3054
  br i1 %.not6, label %deref.next12, label %common.ret, !dbg !3047

common.ret:                                       ; preds = %lookup.next10, %deref.next12, %entry
  %.not.lcssa = phi i1 [ true, %entry ], [ false, %lookup.next10 ], [ true, %deref.next12 ], !dbg !3046
  ret i1 %.not.lcssa, !dbg !3047

deref.next12:                                     ; preds = %lookup.next10
  %6 = add i64 %.sroa.speculated27, 1, !dbg !3055
    #dbg_value(i64 %6, !3058, !DIExpression(), !3055)
    #dbg_value(i64 %1, !3060, !DIExpression(), !3065)
    #dbg_value(ptr poison, !3063, !DIExpression(), !3067)
  %7 = add i64 %1, -1, !dbg !3068
    #dbg_value(i64 %6, !3037, !DIExpression(), !3045)
    #dbg_value(i64 %7, !3038, !DIExpression(), !3069)
  %.not = icmp sgt i64 %6, %7, !dbg !3046
  br i1 %.not, label %common.ret, label %deref.next4, !dbg !3047

lookup.throw:                                     ; preds = %deref.next4
  tail call fastcc void @runtime.lookupPanic(), !dbg !3050
  unreachable, !dbg !3050

lookup.throw9:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3053
  unreachable, !dbg !3053
}
