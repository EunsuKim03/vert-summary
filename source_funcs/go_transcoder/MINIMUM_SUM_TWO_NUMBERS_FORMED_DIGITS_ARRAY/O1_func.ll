define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %arr.data, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4232)
    #dbg_value(i64 %arr.len, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4232)
    #dbg_value(i64 %arr.cap, !4227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4232)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4232)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4233)
    #dbg_value(ptr %arr.data, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4239)
    #dbg_value(i64 %arr.len, !4234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4239)
    #dbg_value(i64 %arr.cap, !4234, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4239)
    #dbg_value({ ptr, i64, i64 } poison, !4234, !DIExpression(), !4241)
    #dbg_value(ptr %arr.data, !4242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4246)
    #dbg_value(i64 %arr.len, !4242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4246)
    #dbg_value(i64 %arr.cap, !4242, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4246)
    #dbg_value({ ptr, i64, i64 } poison, !4242, !DIExpression(), !4248)
    #dbg_value(i64 %arr.len, !4245, !DIExpression(), !4249)
    #dbg_value({ ptr, i64, i64 } poison, !4242, !DIExpression(), !4250)
    #dbg_value(i64 %arr.len, !4245, !DIExpression(), !4251)
    #dbg_value(i64 %arr.len, !4245, !DIExpression(), !4252)
    #dbg_value(i64 %arr.len, !4010, !DIExpression(), !4253)
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4253
  %1 = sub nuw nsw i64 64, %0, !dbg !4253
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4255
    #dbg_value(i64 0, !4229, !DIExpression(), !4256)
    #dbg_value(i64 0, !4230, !DIExpression(), !4257)
    #dbg_value(i64 0, !4231, !DIExpression(), !4258)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4259)
  %2 = icmp sgt i64 %n, 0, !dbg !4260
  br i1 %2, label %for.body, label %for.done, !dbg !4261

for.body:                                         ; preds = %entry, %if.done
  %3 = phi i64 [ %13, %if.done ], [ 0, %entry ]
  %4 = phi i64 [ %12, %if.done ], [ 0, %entry ]
  %5 = phi i64 [ %11, %if.done ], [ 0, %entry ]
    #dbg_value(i64 %3, !4231, !DIExpression(), !4262)
    #dbg_value(i64 %3, !4231, !DIExpression(), !4263)
  %6 = and i64 %3, 1, !dbg !4264
  %.not = icmp eq i64 %6, 0, !dbg !4265
  br i1 %.not, label %if.else, label %if.then, !dbg !4261

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %5, !4229, !DIExpression(), !4266)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4267)
    #dbg_value(i64 %3, !4231, !DIExpression(), !4268)
  %.not2 = icmp ult i64 %3, %arr.len, !dbg !4269
  br i1 %.not2, label %lookup.next, label %lookup.throw, !dbg !4269

lookup.next:                                      ; preds = %if.then
  %7 = mul i64 %5, 10, !dbg !4270
  %8 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %3, !dbg !4269
  %9 = load i64, ptr %8, align 8, !dbg !4269
  %10 = add i64 %9, %7, !dbg !4271
    #dbg_value(i64 %10, !4229, !DIExpression(), !4272)
  br label %if.done, !dbg !4261

if.done:                                          ; preds = %lookup.next4, %lookup.next
  %11 = phi i64 [ %10, %lookup.next ], [ %5, %lookup.next4 ], !dbg !4256
  %12 = phi i64 [ %4, %lookup.next ], [ %17, %lookup.next4 ], !dbg !4257
  %13 = add nuw nsw i64 %3, 1, !dbg !4273
    #dbg_value(i64 %13, !4231, !DIExpression(), !4262)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4259)
  %exitcond.not = icmp eq i64 %13, %n, !dbg !4260
  br i1 %exitcond.not, label %for.done.loopexit, label %for.body, !dbg !4261

if.else:                                          ; preds = %for.body
    #dbg_value(i64 %4, !4230, !DIExpression(), !4274)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4275)
    #dbg_value(i64 %3, !4231, !DIExpression(), !4276)
  %.not1 = icmp ult i64 %3, %arr.len, !dbg !4277
  br i1 %.not1, label %lookup.next4, label %lookup.throw3, !dbg !4277

lookup.next4:                                     ; preds = %if.else
  %14 = mul i64 %4, 10, !dbg !4278
  %15 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %3, !dbg !4277
  %16 = load i64, ptr %15, align 8, !dbg !4277
  %17 = add i64 %16, %14, !dbg !4279
    #dbg_value(i64 %17, !4230, !DIExpression(), !4280)
  br label %if.done, !dbg !4261

for.done.loopexit:                                ; preds = %if.done
  %18 = add i64 %12, %11, !dbg !4281
  br label %for.done, !dbg !4281

for.done:                                         ; preds = %for.done.loopexit, %entry
  %19 = phi i64 [ 0, %entry ], [ %18, %for.done.loopexit ], !dbg !4281
    #dbg_value(i64 poison, !4229, !DIExpression(), !4282)
    #dbg_value(i64 poison, !4230, !DIExpression(), !4283)
  ret i64 %19, !dbg !4284

lookup.throw:                                     ; preds = %if.then
  call fastcc void @runtime.lookupPanic(), !dbg !4269
  unreachable, !dbg !4269

lookup.throw3:                                    ; preds = %if.else
  call fastcc void @runtime.lookupPanic(), !dbg !4277
  unreachable, !dbg !4277
}
