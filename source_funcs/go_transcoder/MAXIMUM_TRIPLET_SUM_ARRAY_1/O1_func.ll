define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %arr.data, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4229)
    #dbg_value(i64 %arr.len, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4229)
    #dbg_value(i64 %arr.cap, !4227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4229)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4229)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4230)
    #dbg_value(ptr %arr.data, !4231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4236)
    #dbg_value(i64 %arr.len, !4231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4236)
    #dbg_value(i64 %arr.cap, !4231, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4236)
    #dbg_value({ ptr, i64, i64 } poison, !4231, !DIExpression(), !4238)
    #dbg_value(ptr %arr.data, !4239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4243)
    #dbg_value(i64 %arr.len, !4239, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4243)
    #dbg_value(i64 %arr.cap, !4239, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4243)
    #dbg_value({ ptr, i64, i64 } poison, !4239, !DIExpression(), !4245)
    #dbg_value(i64 %arr.len, !4242, !DIExpression(), !4246)
    #dbg_value({ ptr, i64, i64 } poison, !4239, !DIExpression(), !4247)
    #dbg_value(i64 %arr.len, !4242, !DIExpression(), !4248)
    #dbg_value(i64 %arr.len, !4242, !DIExpression(), !4249)
    #dbg_value(i64 %arr.len, !4010, !DIExpression(), !4250)
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4250
  %1 = sub nuw nsw i64 64, %0, !dbg !4250
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4252
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4253)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4254)
  %2 = add i64 %n, -1, !dbg !4255
  %.not = icmp ult i64 %2, %arr.len, !dbg !4256
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !4256

lookup.next:                                      ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4257)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4258)
  %3 = add i64 %n, -2, !dbg !4259
  %.not3 = icmp ult i64 %3, %arr.len, !dbg !4260
  br i1 %.not3, label %lookup.next4, label %lookup.throw3, !dbg !4260

lookup.next4:                                     ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4261)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4262)
  %4 = add i64 %n, -3, !dbg !4263
  %.not4 = icmp ult i64 %4, %arr.len, !dbg !4264
  br i1 %.not4, label %lookup.next8, label %lookup.throw7, !dbg !4264

lookup.next8:                                     ; preds = %lookup.next4
  %5 = getelementptr inbounds i64, ptr %arr.data, i64 %2, !dbg !4256
  %6 = load i64, ptr %5, align 8, !dbg !4256
  %7 = getelementptr inbounds i64, ptr %arr.data, i64 %3, !dbg !4260
  %8 = load i64, ptr %7, align 8, !dbg !4260
  %9 = add i64 %8, %6, !dbg !4265
  %10 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !4264
  %11 = load i64, ptr %10, align 8, !dbg !4264
  %12 = add i64 %9, %11, !dbg !4266
  ret i64 %12, !dbg !4267

lookup.throw:                                     ; preds = %entry
  call fastcc void @runtime.lookupPanic(), !dbg !4256
  unreachable, !dbg !4256

lookup.throw3:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !4260
  unreachable, !dbg !4260

lookup.throw7:                                    ; preds = %lookup.next4
  call fastcc void @runtime.lookupPanic(), !dbg !4264
  unreachable, !dbg !4264
}
