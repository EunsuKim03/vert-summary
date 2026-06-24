define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %N, i64 %k) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %arr.data, !4225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4230)
    #dbg_value(i64 %arr.len, !4225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4230)
    #dbg_value(i64 %arr.cap, !4225, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4230)
    #dbg_value(i64 %N, !4226, !DIExpression(), !4230)
    #dbg_value(i64 %k, !4227, !DIExpression(), !4230)
    #dbg_value(i64 0, !4228, !DIExpression(), !4231)
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4232)
    #dbg_value(ptr %arr.data, !4233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4238)
    #dbg_value(i64 %arr.len, !4233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4238)
    #dbg_value(i64 %arr.cap, !4233, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4238)
    #dbg_value({ ptr, i64, i64 } poison, !4233, !DIExpression(), !4240)
    #dbg_value(ptr %arr.data, !4241, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4245)
    #dbg_value(i64 %arr.len, !4241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4245)
    #dbg_value(i64 %arr.cap, !4241, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4245)
    #dbg_value({ ptr, i64, i64 } poison, !4241, !DIExpression(), !4247)
    #dbg_value(i64 %arr.len, !4244, !DIExpression(), !4248)
    #dbg_value({ ptr, i64, i64 } poison, !4241, !DIExpression(), !4249)
    #dbg_value(i64 %arr.len, !4244, !DIExpression(), !4250)
    #dbg_value(i64 %arr.len, !4244, !DIExpression(), !4251)
    #dbg_value(i64 %arr.len, !4010, !DIExpression(), !4252)
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4252
  %1 = sub nuw nsw i64 64, %0, !dbg !4252
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4254
    #dbg_value(i64 %N, !4226, !DIExpression(), !4255)
    #dbg_value(i64 %N, !4229, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4256)
  %2 = add i64 %N, -1, !dbg !4257
  %3 = icmp sgt i64 %2, 0, !dbg !4258
  br i1 %3, label %for.body, label %for.done, !dbg !4259

for.body:                                         ; preds = %entry, %lookup.next4
  %4 = phi i64 [ %17, %lookup.next4 ], [ %2, %entry ]
  %.in11 = phi i64 [ %16, %lookup.next4 ], [ %N, %entry ]
  %5 = phi i64 [ %15, %lookup.next4 ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4260)
    #dbg_value(i64 %4, !4229, !DIExpression(), !4261)
  %.not = icmp ult i64 %4, %arr.len, !dbg !4262
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !4262

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !4225, !DIExpression(), !4263)
    #dbg_value(i64 %4, !4229, !DIExpression(), !4264)
  %6 = add i64 %.in11, -2, !dbg !4265
  %.not3 = icmp ult i64 %6, %arr.len, !dbg !4266
  br i1 %.not3, label %lookup.next4, label %lookup.throw3, !dbg !4266

lookup.next4:                                     ; preds = %lookup.next
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4, !dbg !4262
  %8 = load i64, ptr %7, align 8, !dbg !4262
  %9 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %6, !dbg !4266
  %10 = load i64, ptr %9, align 8, !dbg !4266
  %11 = sub i64 %8, %10, !dbg !4267
    #dbg_value(i64 %k, !4227, !DIExpression(), !4268)
  %12 = icmp slt i64 %11, %k, !dbg !4269
  %13 = add i64 %8, %5, !dbg !4259
  %14 = add i64 %13, %10, !dbg !4259
  %15 = select i1 %12, i64 %14, i64 %5, !dbg !4259
  %16 = select i1 %12, i64 %6, i64 %4, !dbg !4259
    #dbg_value(i64 %16, !4229, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4270)
  %17 = add i64 %16, -1, !dbg !4257
    #dbg_value(i64 %17, !4229, !DIExpression(), !4271)
  %18 = icmp sgt i64 %17, 0, !dbg !4258
  br i1 %18, label %for.body, label %for.done, !dbg !4259

for.done:                                         ; preds = %lookup.next4, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %15, %lookup.next4 ], !dbg !4231
    #dbg_value(i64 %.lcssa, !4228, !DIExpression(), !4272)
  ret i64 %.lcssa, !dbg !4273

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4262
  unreachable, !dbg !4262

lookup.throw3:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !4266
  unreachable, !dbg !4266
}
