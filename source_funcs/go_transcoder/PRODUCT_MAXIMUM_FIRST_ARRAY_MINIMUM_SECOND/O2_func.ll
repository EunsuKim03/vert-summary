define i64 @f_gold(ptr nocapture %arr1.data, i64 %arr1.len, i64 %arr1.cap, ptr nocapture %arr2.data, i64 %arr2.len, i64 %arr2.cap, i64 %n1, i64 %n2) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %arr1.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4009)
    #dbg_value(i64 %arr1.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4009)
    #dbg_value(i64 %arr1.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4009)
    #dbg_value(ptr %arr2.data, !4006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4009)
    #dbg_value(i64 %arr2.len, !4006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4009)
    #dbg_value(i64 %arr2.cap, !4006, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4009)
    #dbg_value(i64 %n1, !4007, !DIExpression(), !4009)
    #dbg_value(i64 %n2, !4008, !DIExpression(), !4009)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4010)
    #dbg_value(ptr %arr1.data, !4011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4016)
    #dbg_value(i64 %arr1.len, !4011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4016)
    #dbg_value(i64 %arr1.cap, !4011, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4016)
    #dbg_value({ ptr, i64, i64 } poison, !4011, !DIExpression(), !4018)
    #dbg_value(ptr %arr1.data, !4019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4023)
    #dbg_value(i64 %arr1.len, !4019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4023)
    #dbg_value(i64 %arr1.cap, !4019, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4023)
    #dbg_value({ ptr, i64, i64 } poison, !4019, !DIExpression(), !4025)
    #dbg_value(i64 %arr1.len, !4022, !DIExpression(), !4026)
    #dbg_value({ ptr, i64, i64 } poison, !4019, !DIExpression(), !4027)
    #dbg_value(i64 %arr1.len, !4022, !DIExpression(), !4028)
    #dbg_value(i64 %arr1.len, !4022, !DIExpression(), !4029)
    #dbg_value(i64 %arr1.len, !3804, !DIExpression(), !4030)
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr1.len, i1 false), !dbg !4030
  %1 = sub nuw nsw i64 64, %0, !dbg !4030
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr1.data, i64 %arr1.len, i64 0, i64 %arr1.len, i64 %1), !dbg !4032
    #dbg_value({ ptr, i64, i64 } poison, !4006, !DIExpression(), !4033)
    #dbg_value(ptr %arr2.data, !4011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4034)
    #dbg_value(i64 %arr2.len, !4011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4034)
    #dbg_value(i64 %arr2.cap, !4011, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4034)
    #dbg_value({ ptr, i64, i64 } poison, !4011, !DIExpression(), !4036)
    #dbg_value(ptr %arr2.data, !4019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4037)
    #dbg_value(i64 %arr2.len, !4019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4037)
    #dbg_value(i64 %arr2.cap, !4019, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4037)
    #dbg_value({ ptr, i64, i64 } poison, !4019, !DIExpression(), !4039)
    #dbg_value(i64 %arr2.len, !4022, !DIExpression(), !4040)
    #dbg_value({ ptr, i64, i64 } poison, !4019, !DIExpression(), !4041)
    #dbg_value(i64 %arr2.len, !4022, !DIExpression(), !4042)
    #dbg_value(i64 %arr2.len, !4022, !DIExpression(), !4043)
    #dbg_value(i64 %arr2.len, !3804, !DIExpression(), !4044)
  %2 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr2.len, i1 false), !dbg !4044
  %3 = sub nuw nsw i64 64, %2, !dbg !4044
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr2.data, i64 %arr2.len, i64 0, i64 %arr2.len, i64 %3), !dbg !4046
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4047)
    #dbg_value(i64 %n1, !4007, !DIExpression(), !4048)
  %4 = add i64 %n1, -1, !dbg !4049
  %.not = icmp ult i64 %4, %arr1.len, !dbg !4050
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !4050

lookup.next:                                      ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !4006, !DIExpression(), !4033)
    #dbg_value({ ptr, i64, i64 } poison, !4006, !DIExpression(), !4051)
  %5 = icmp eq i64 %arr2.len, 0, !dbg !4052
  br i1 %5, label %lookup.throw3, label %lookup.next4, !dbg !4052

lookup.next4:                                     ; preds = %lookup.next
  %6 = getelementptr inbounds i64, ptr %arr1.data, i64 %4, !dbg !4050
  %7 = load i64, ptr %6, align 8, !dbg !4050
  %8 = load i64, ptr %arr2.data, align 8, !dbg !4052
  %9 = mul i64 %8, %7, !dbg !4053
  ret i64 %9, !dbg !4054

lookup.throw:                                     ; preds = %entry
  tail call fastcc void @runtime.lookupPanic(), !dbg !4050
  unreachable, !dbg !4050

lookup.throw3:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !4052
  unreachable, !dbg !4052
}
