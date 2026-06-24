define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %N, i64 %k) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %arr.data, !4003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4008)
    #dbg_value(i64 %arr.len, !4003, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4008)
    #dbg_value(i64 %arr.cap, !4003, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4008)
    #dbg_value(i64 %N, !4004, !DIExpression(), !4008)
    #dbg_value(i64 %k, !4005, !DIExpression(), !4008)
    #dbg_value(i64 0, !4006, !DIExpression(), !4009)
    #dbg_value({ ptr, i64, i64 } poison, !4003, !DIExpression(), !4010)
    #dbg_value(ptr %arr.data, !4011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4016)
    #dbg_value(i64 %arr.len, !4011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4016)
    #dbg_value(i64 %arr.cap, !4011, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4016)
    #dbg_value({ ptr, i64, i64 } poison, !4011, !DIExpression(), !4018)
    #dbg_value(ptr %arr.data, !4019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4023)
    #dbg_value(i64 %arr.len, !4019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4023)
    #dbg_value(i64 %arr.cap, !4019, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4023)
    #dbg_value({ ptr, i64, i64 } poison, !4019, !DIExpression(), !4025)
    #dbg_value(i64 %arr.len, !4022, !DIExpression(), !4026)
    #dbg_value(i64 %arr.len, !3804, !DIExpression(), !4027)
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4027
  %1 = sub nuw nsw i64 64, %0, !dbg !4027
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4029
    #dbg_value(i64 %N, !4007, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4030)
  %2 = add i64 %N, -1, !dbg !4031
  %3 = icmp sgt i64 %2, 0, !dbg !4032
  br i1 %3, label %for.body, label %for.done, !dbg !4033

for.body:                                         ; preds = %entry, %lookup.next4
  %4 = phi i64 [ %17, %lookup.next4 ], [ %2, %entry ]
  %.in11 = phi i64 [ %16, %lookup.next4 ], [ %N, %entry ]
  %5 = phi i64 [ %15, %lookup.next4 ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !4003, !DIExpression(), !4034)
    #dbg_value(i64 %4, !4007, !DIExpression(), !4035)
  %.not = icmp ult i64 %4, %arr.len, !dbg !4036
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !4036

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !4003, !DIExpression(), !4037)
    #dbg_value(i64 %4, !4007, !DIExpression(), !4038)
  %6 = add i64 %.in11, -2, !dbg !4039
  %.not3 = icmp ult i64 %6, %arr.len, !dbg !4040
  br i1 %.not3, label %lookup.next4, label %lookup.throw3, !dbg !4040

lookup.next4:                                     ; preds = %lookup.next
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4, !dbg !4036
  %8 = load i64, ptr %7, align 8, !dbg !4036
  %9 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %6, !dbg !4040
  %10 = load i64, ptr %9, align 8, !dbg !4040
  %11 = sub i64 %8, %10, !dbg !4041
    #dbg_value(i64 %k, !4005, !DIExpression(), !4042)
  %12 = icmp slt i64 %11, %k, !dbg !4043
  %13 = add i64 %8, %5, !dbg !4033
  %14 = add i64 %13, %10, !dbg !4033
  %15 = select i1 %12, i64 %14, i64 %5, !dbg !4033
  %16 = select i1 %12, i64 %6, i64 %4, !dbg !4033
    #dbg_value(i64 %16, !4007, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4044)
  %17 = add nsw i64 %16, -1, !dbg !4031
    #dbg_value(i64 %17, !4007, !DIExpression(), !4045)
  %18 = icmp sgt i64 %16, 1, !dbg !4032
  br i1 %18, label %for.body, label %for.done, !dbg !4033

for.done:                                         ; preds = %lookup.next4, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %15, %lookup.next4 ], !dbg !4009
    #dbg_value(i64 %.lcssa, !4006, !DIExpression(), !4046)
  ret i64 %.lcssa, !dbg !4047

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !4036
  unreachable, !dbg !4036

lookup.throw3:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !4040
  unreachable, !dbg !4040
}
