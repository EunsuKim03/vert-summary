define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %arr.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4007)
    #dbg_value(i64 %arr.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4007)
    #dbg_value(i64 %arr.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4007)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4007)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4008)
    #dbg_value(ptr %arr.data, !4009, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4014)
    #dbg_value(i64 %arr.len, !4009, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4014)
    #dbg_value(i64 %arr.cap, !4009, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4014)
    #dbg_value({ ptr, i64, i64 } poison, !4009, !DIExpression(), !4016)
    #dbg_value(ptr %arr.data, !4017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4021)
    #dbg_value(i64 %arr.len, !4017, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4021)
    #dbg_value(i64 %arr.cap, !4017, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4021)
    #dbg_value({ ptr, i64, i64 } poison, !4017, !DIExpression(), !4023)
    #dbg_value(i64 %arr.len, !4020, !DIExpression(), !4024)
    #dbg_value({ ptr, i64, i64 } poison, !4017, !DIExpression(), !4025)
    #dbg_value(i64 %arr.len, !4020, !DIExpression(), !4026)
    #dbg_value(i64 %arr.len, !4020, !DIExpression(), !4027)
    #dbg_value(i64 %arr.len, !3804, !DIExpression(), !4028)
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4028
  %1 = sub nuw nsw i64 64, %0, !dbg !4028
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4030
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4031)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4032)
  %2 = add i64 %n, -1, !dbg !4033
  %.not = icmp ult i64 %2, %arr.len, !dbg !4034
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !4034

lookup.next:                                      ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4035)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4036)
  %3 = add i64 %n, -2, !dbg !4037
  %.not3 = icmp ult i64 %3, %arr.len, !dbg !4038
  br i1 %.not3, label %lookup.next4, label %lookup.throw3, !dbg !4038

lookup.next4:                                     ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4039)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4040)
  %4 = add i64 %n, -3, !dbg !4041
  %.not4 = icmp ult i64 %4, %arr.len, !dbg !4042
  br i1 %.not4, label %lookup.next8, label %lookup.throw7, !dbg !4042

lookup.next8:                                     ; preds = %lookup.next4
  %5 = getelementptr inbounds i64, ptr %arr.data, i64 %2, !dbg !4034
  %6 = load i64, ptr %5, align 8, !dbg !4034
  %7 = getelementptr inbounds i64, ptr %arr.data, i64 %3, !dbg !4038
  %8 = load i64, ptr %7, align 8, !dbg !4038
  %9 = add i64 %8, %6, !dbg !4043
  %10 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !4042
  %11 = load i64, ptr %10, align 8, !dbg !4042
  %12 = add i64 %9, %11, !dbg !4044
  ret i64 %12, !dbg !4045

lookup.throw:                                     ; preds = %entry
  tail call fastcc void @runtime.lookupPanic(), !dbg !4034
  unreachable, !dbg !4034

lookup.throw3:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !4038
  unreachable, !dbg !4038

lookup.throw7:                                    ; preds = %lookup.next4
  tail call fastcc void @runtime.lookupPanic(), !dbg !4042
  unreachable, !dbg !4042
}
