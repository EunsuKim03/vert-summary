define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %arr.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4009)
    #dbg_value(i64 %arr.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4009)
    #dbg_value(i64 %arr.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4009)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4009)
    #dbg_value(i64 0, !4007, !DIExpression(), !4010)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4011)
    #dbg_value(ptr %arr.data, !4012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4017)
    #dbg_value(i64 %arr.len, !4012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4017)
    #dbg_value(i64 %arr.cap, !4012, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4017)
    #dbg_value({ ptr, i64, i64 } poison, !4012, !DIExpression(), !4019)
    #dbg_value(ptr %arr.data, !4020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4024)
    #dbg_value(i64 %arr.len, !4020, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4024)
    #dbg_value(i64 %arr.cap, !4020, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4024)
    #dbg_value({ ptr, i64, i64 } poison, !4020, !DIExpression(), !4026)
    #dbg_value(i64 %arr.len, !4023, !DIExpression(), !4027)
    #dbg_value(i64 %arr.len, !3804, !DIExpression(), !4028)
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4028
  %1 = sub nuw nsw i64 64, %0, !dbg !4028
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4030
    #dbg_value(i64 0, !4008, !DIExpression(), !4031)
  %2 = sdiv i64 %n, 2
  %3 = icmp sgt i64 %n, 1, !dbg !4032
  br i1 %3, label %for.body, label %for.done, !dbg !4033

for.body:                                         ; preds = %entry, %lookup.next4
  %4 = phi i64 [ %16, %lookup.next4 ], [ 0, %entry ]
  %5 = phi i64 [ %15, %lookup.next4 ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4034)
    #dbg_value(i64 %4, !4008, !DIExpression(), !4035)
  %exitcond.not = icmp eq i64 %4, %arr.len, !dbg !4036
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !4036

lookup.next:                                      ; preds = %for.body
    #dbg_value(!DIArgList(i64 poison, i64 poison), !4007, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_minus, DW_OP_stack_value), !4037)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4038)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4039)
    #dbg_value(i64 %4, !4008, !DIExpression(), !4040)
  %6 = xor i64 %4, -1, !dbg !4041
  %7 = add nsw i64 %n, %6, !dbg !4041
  %.not2 = icmp ult i64 %7, %arr.len, !dbg !4042
  br i1 %.not2, label %lookup.next4, label %lookup.throw3, !dbg !4042

lookup.next4:                                     ; preds = %lookup.next
  %8 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4, !dbg !4036
  %9 = load i64, ptr %8, align 8, !dbg !4036
    #dbg_value(!DIArgList(i64 %5, i64 %9), !4007, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_minus, DW_OP_stack_value), !4037)
  %10 = shl i64 %9, 1, !dbg !4037
  %11 = sub i64 %5, %10, !dbg !4037
    #dbg_value(i64 %11, !4007, !DIExpression(), !4037)
  %12 = getelementptr inbounds i64, ptr %arr.data, i64 %7, !dbg !4042
  %13 = load i64, ptr %12, align 8, !dbg !4042
  %14 = shl i64 %13, 1, !dbg !4043
  %15 = add i64 %11, %14, !dbg !4044
    #dbg_value(i64 %15, !4007, !DIExpression(), !4044)
  %16 = add nuw nsw i64 %4, 1, !dbg !4045
    #dbg_value(i64 %16, !4008, !DIExpression(), !4046)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4047)
  %exitcond9.not = icmp eq i64 %16, %2, !dbg !4032
  br i1 %exitcond9.not, label %for.done, label %for.body, !dbg !4033

for.done:                                         ; preds = %lookup.next4, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %15, %lookup.next4 ], !dbg !4010
    #dbg_value(i64 %.lcssa, !4007, !DIExpression(), !4048)
  ret i64 %.lcssa, !dbg !4049

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !4036
  unreachable, !dbg !4036

lookup.throw3:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !4042
  unreachable, !dbg !4042
}
