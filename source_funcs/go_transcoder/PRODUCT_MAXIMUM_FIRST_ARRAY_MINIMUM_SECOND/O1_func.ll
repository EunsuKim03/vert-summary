define i64 @f_gold(ptr nocapture %arr1.data, i64 %arr1.len, i64 %arr1.cap, ptr nocapture %arr2.data, i64 %arr2.len, i64 %arr2.cap, i64 %n1, i64 %n2) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %arr1.data, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4231)
    #dbg_value(i64 %arr1.len, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4231)
    #dbg_value(i64 %arr1.cap, !4227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4231)
    #dbg_value(ptr %arr2.data, !4228, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4231)
    #dbg_value(i64 %arr2.len, !4228, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4231)
    #dbg_value(i64 %arr2.cap, !4228, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4231)
    #dbg_value(i64 %n1, !4229, !DIExpression(), !4231)
    #dbg_value(i64 %n2, !4230, !DIExpression(), !4231)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4232)
    #dbg_value(ptr %arr1.data, !4233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4238)
    #dbg_value(i64 %arr1.len, !4233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4238)
    #dbg_value(i64 %arr1.cap, !4233, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4238)
    #dbg_value({ ptr, i64, i64 } poison, !4233, !DIExpression(), !4240)
    #dbg_value(ptr %arr1.data, !4241, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4245)
    #dbg_value(i64 %arr1.len, !4241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4245)
    #dbg_value(i64 %arr1.cap, !4241, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4245)
    #dbg_value({ ptr, i64, i64 } poison, !4241, !DIExpression(), !4247)
    #dbg_value(i64 %arr1.len, !4244, !DIExpression(), !4248)
    #dbg_value({ ptr, i64, i64 } poison, !4241, !DIExpression(), !4249)
    #dbg_value(i64 %arr1.len, !4244, !DIExpression(), !4250)
    #dbg_value(i64 %arr1.len, !4244, !DIExpression(), !4251)
    #dbg_value(i64 %arr1.len, !4010, !DIExpression(), !4252)
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr1.len, i1 false), !dbg !4252
  %1 = sub nuw nsw i64 64, %0, !dbg !4252
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr1.data, i64 %arr1.len, i64 0, i64 %arr1.len, i64 %1), !dbg !4254
    #dbg_value({ ptr, i64, i64 } poison, !4228, !DIExpression(), !4255)
    #dbg_value(ptr %arr2.data, !4233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4256)
    #dbg_value(i64 %arr2.len, !4233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4256)
    #dbg_value(i64 %arr2.cap, !4233, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4256)
    #dbg_value({ ptr, i64, i64 } poison, !4233, !DIExpression(), !4258)
    #dbg_value(ptr %arr2.data, !4241, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4259)
    #dbg_value(i64 %arr2.len, !4241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4259)
    #dbg_value(i64 %arr2.cap, !4241, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4259)
    #dbg_value({ ptr, i64, i64 } poison, !4241, !DIExpression(), !4261)
    #dbg_value(i64 %arr2.len, !4244, !DIExpression(), !4262)
    #dbg_value({ ptr, i64, i64 } poison, !4241, !DIExpression(), !4263)
    #dbg_value(i64 %arr2.len, !4244, !DIExpression(), !4264)
    #dbg_value(i64 %arr2.len, !4244, !DIExpression(), !4265)
    #dbg_value(i64 %arr2.len, !4010, !DIExpression(), !4266)
  %2 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr2.len, i1 false), !dbg !4266
  %3 = sub nuw nsw i64 64, %2, !dbg !4266
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr2.data, i64 %arr2.len, i64 0, i64 %arr2.len, i64 %3), !dbg !4268
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4269)
    #dbg_value(i64 %n1, !4229, !DIExpression(), !4270)
  %4 = add i64 %n1, -1, !dbg !4271
  %.not = icmp ult i64 %4, %arr1.len, !dbg !4272
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !4272

lookup.next:                                      ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !4228, !DIExpression(), !4255)
    #dbg_value({ ptr, i64, i64 } poison, !4228, !DIExpression(), !4273)
  %5 = icmp eq i64 %arr2.len, 0, !dbg !4274
  br i1 %5, label %lookup.throw3, label %lookup.next4, !dbg !4274

lookup.next4:                                     ; preds = %lookup.next
  %6 = getelementptr inbounds i64, ptr %arr1.data, i64 %4, !dbg !4272
  %7 = load i64, ptr %6, align 8, !dbg !4272
  %8 = load i64, ptr %arr2.data, align 8, !dbg !4274
  %9 = mul i64 %8, %7, !dbg !4275
  ret i64 %9, !dbg !4276

lookup.throw:                                     ; preds = %entry
  call fastcc void @runtime.lookupPanic(), !dbg !4272
  unreachable, !dbg !4272

lookup.throw3:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !4274
  unreachable, !dbg !4274
}
