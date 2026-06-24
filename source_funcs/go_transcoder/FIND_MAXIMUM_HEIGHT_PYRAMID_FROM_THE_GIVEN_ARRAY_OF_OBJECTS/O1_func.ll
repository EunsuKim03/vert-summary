define i64 @f_gold(ptr nocapture %boxes.data, i64 %boxes.len, i64 %boxes.cap, i64 %n) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %boxes.data, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4235)
    #dbg_value(i64 %boxes.len, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4235)
    #dbg_value(i64 %boxes.cap, !4227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4235)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4235)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4236)
    #dbg_value(ptr %boxes.data, !4237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4242)
    #dbg_value(i64 %boxes.len, !4237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4242)
    #dbg_value(i64 %boxes.cap, !4237, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4242)
    #dbg_value({ ptr, i64, i64 } poison, !4237, !DIExpression(), !4244)
    #dbg_value(ptr %boxes.data, !4245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4249)
    #dbg_value(i64 %boxes.len, !4245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4249)
    #dbg_value(i64 %boxes.cap, !4245, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4249)
    #dbg_value({ ptr, i64, i64 } poison, !4245, !DIExpression(), !4251)
    #dbg_value(i64 %boxes.len, !4248, !DIExpression(), !4252)
    #dbg_value({ ptr, i64, i64 } poison, !4245, !DIExpression(), !4253)
    #dbg_value(i64 %boxes.len, !4248, !DIExpression(), !4254)
    #dbg_value(i64 %boxes.len, !4248, !DIExpression(), !4255)
    #dbg_value(i64 %boxes.len, !4010, !DIExpression(), !4256)
  %n.fr = freeze i64 %n, !dbg !4258
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %boxes.len, i1 false), !dbg !4256
  %1 = sub nuw nsw i64 64, %0, !dbg !4256
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %boxes.data, i64 %boxes.len, i64 0, i64 %boxes.len, i64 %1), !dbg !4259
    #dbg_value(i64 1, !4229, !DIExpression(), !4260)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4261)
  %2 = icmp eq i64 %boxes.len, 0, !dbg !4262
  br i1 %2, label %lookup.throw, label %lookup.next, !dbg !4262

lookup.next:                                      ; preds = %entry
    #dbg_value(i64 poison, !4230, !DIExpression(), !4263)
    #dbg_value(i64 1, !4231, !DIExpression(), !4264)
    #dbg_value(i64 0, !4232, !DIExpression(), !4265)
    #dbg_value(i64 0, !4233, !DIExpression(), !4266)
    #dbg_value(i64 1, !4234, !DIExpression(), !4267)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4268)
  %3 = icmp sgt i64 %n.fr, 1, !dbg !4269
  br i1 %3, label %for.body.preheader, label %for.done, !dbg !4270

for.body.preheader:                               ; preds = %lookup.next
  %4 = load i64, ptr %boxes.data, align 8, !dbg !4262
    #dbg_value(i64 %4, !4230, !DIExpression(), !4263)
  %5 = add i64 %boxes.len, -1, !dbg !4258
  %6 = add nsw i64 %n.fr, -2, !dbg !4258
  %.not.not = icmp ugt i64 %5, %6, !dbg !4258
  br label %for.body, !dbg !4258

for.body:                                         ; preds = %for.body.preheader, %if.done
  %7 = phi i64 [ %25, %if.done ], [ 1, %for.body.preheader ]
  %8 = phi i64 [ %24, %if.done ], [ 0, %for.body.preheader ]
  %9 = phi i64 [ %23, %if.done ], [ 0, %for.body.preheader ]
  %10 = phi i64 [ %22, %if.done ], [ 1, %for.body.preheader ]
  %11 = phi i64 [ %21, %if.done ], [ %4, %for.body.preheader ]
  %12 = phi i64 [ %20, %if.done ], [ 1, %for.body.preheader ]
    #dbg_value(i64 %7, !4234, !DIExpression(), !4271)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4272)
    #dbg_value(i64 %7, !4234, !DIExpression(), !4273)
  br i1 %.not.not, label %lookup.next4, label %lookup.throw3, !dbg !4258

lookup.next4:                                     ; preds = %for.body
  %13 = getelementptr inbounds nuw i64, ptr %boxes.data, i64 %7, !dbg !4258
  %14 = load i64, ptr %13, align 8, !dbg !4258
  %15 = add i64 %14, %8, !dbg !4274
    #dbg_value(i64 %15, !4233, !DIExpression(), !4274)
  %16 = add i64 %9, 1, !dbg !4275
    #dbg_value(i64 %16, !4232, !DIExpression(), !4275)
    #dbg_value(i64 %15, !4233, !DIExpression(), !4276)
    #dbg_value(i64 %11, !4230, !DIExpression(), !4277)
  %17 = icmp sgt i64 %15, %11, !dbg !4278
    #dbg_value(i64 %16, !4232, !DIExpression(), !4279)
    #dbg_value(i64 %10, !4231, !DIExpression(), !4280)
  %18 = icmp sgt i64 %16, %10
  %or.cond = select i1 %17, i1 %18, i1 false, !dbg !4270
  br i1 %or.cond, label %if.then, label %if.done, !dbg !4270

if.then:                                          ; preds = %lookup.next4
    #dbg_value(i64 %15, !4233, !DIExpression(), !4281)
    #dbg_value(i64 %15, !4230, !DIExpression(), !4282)
    #dbg_value(i64 %16, !4232, !DIExpression(), !4283)
    #dbg_value(i64 %16, !4231, !DIExpression(), !4284)
    #dbg_value(i64 0, !4232, !DIExpression(), !4285)
    #dbg_value(i64 0, !4233, !DIExpression(), !4286)
  %19 = add i64 %12, 1, !dbg !4287
    #dbg_value(i64 %19, !4229, !DIExpression(), !4287)
  br label %if.done, !dbg !4270

if.done:                                          ; preds = %if.then, %lookup.next4
  %20 = phi i64 [ %12, %lookup.next4 ], [ %19, %if.then ], !dbg !4260
  %21 = phi i64 [ %11, %lookup.next4 ], [ %15, %if.then ], !dbg !4263
  %22 = phi i64 [ %10, %lookup.next4 ], [ %16, %if.then ], !dbg !4264
  %23 = phi i64 [ %16, %lookup.next4 ], [ 0, %if.then ], !dbg !4265
  %24 = phi i64 [ %15, %lookup.next4 ], [ 0, %if.then ], !dbg !4266
  %25 = add nuw nsw i64 %7, 1, !dbg !4288
    #dbg_value(i64 %25, !4234, !DIExpression(), !4271)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4268)
  %exitcond.not = icmp eq i64 %25, %n.fr, !dbg !4269
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4270

for.done:                                         ; preds = %if.done, %lookup.next
  %.lcssa = phi i64 [ 1, %lookup.next ], [ %20, %if.done ], !dbg !4260
    #dbg_value(i64 %.lcssa, !4229, !DIExpression(), !4289)
  ret i64 %.lcssa, !dbg !4290

lookup.throw:                                     ; preds = %entry
  call fastcc void @runtime.lookupPanic(), !dbg !4262
  unreachable, !dbg !4262

lookup.throw3:                                    ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4258
  unreachable, !dbg !4258
}
