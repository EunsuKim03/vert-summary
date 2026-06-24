define i64 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(ptr %str.data, !3030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3034)
    #dbg_value(i64 %str.len, !3030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3034)
    #dbg_value(i64 %str.cap, !3030, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3034)
    #dbg_value(i64 0, !3031, !DIExpression(), !3035)
    #dbg_value(i64 0, !3032, !DIExpression(), !3036)
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3037)
  %0 = icmp sgt i64 %str.len, 0, !dbg !3038
  br i1 %0, label %lookup.next, label %common.ret, !dbg !3039

lookup.next:                                      ; preds = %entry, %shift.next2
  %1 = phi i64 [ %11, %shift.next2 ], [ 0, %entry ]
  %2 = phi i64 [ %10, %shift.next2 ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3040)
    #dbg_value(i64 %1, !3032, !DIExpression(), !3041)
  %3 = getelementptr inbounds nuw i8, ptr %str.data, i64 %1, !dbg !3042
  %4 = load i8, ptr %3, align 1, !dbg !3042
  %5 = add i8 %4, -97, !dbg !3043
  %6 = zext nneg i8 %5 to i64, !dbg !3044
    #dbg_value(i64 %2, !3031, !DIExpression(), !3045)
    #dbg_value(i64 %6, !3033, !DIExpression(), !3046)
  %shift.overflow = icmp ugt i8 %5, 63, !dbg !3047
  %7 = shl nuw i64 1, %6, !dbg !3047
  %shift.result = select i1 %shift.overflow, i64 0, i64 %7, !dbg !3047
  %8 = and i64 %shift.result, %2, !dbg !3048
  %9 = icmp sgt i64 %8, 0, !dbg !3049
  br i1 %9, label %common.ret, label %shift.next2, !dbg !3039

common.ret:                                       ; preds = %lookup.next, %shift.next2, %entry
  %common.ret.op = phi i64 [ -1, %entry ], [ -1, %shift.next2 ], [ %1, %lookup.next ]
  ret i64 %common.ret.op, !dbg !3039

shift.next2:                                      ; preds = %lookup.next
    #dbg_value(i64 %6, !3033, !DIExpression(), !3050)
  %10 = or i64 %shift.result, %2, !dbg !3051
    #dbg_value(i64 %10, !3031, !DIExpression(), !3051)
  %11 = add nuw nsw i64 %1, 1, !dbg !3052
    #dbg_value(i64 %11, !3032, !DIExpression(), !3053)
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3037)
  %exitcond.not = icmp eq i64 %11, %str.len, !dbg !3038
  br i1 %exitcond.not, label %common.ret, label %lookup.next, !dbg !3039
}
