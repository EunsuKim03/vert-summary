define range(i64 0, -9223372036854775808) i64 @f_gold(ptr nocapture %ar.data, i64 %ar.len, i64 %ar.cap, i64 %n) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %ar.data, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4232)
    #dbg_value(i64 %ar.len, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4232)
    #dbg_value(i64 %ar.cap, !4227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4232)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4232)
    #dbg_value(i64 0, !4229, !DIExpression(), !4233)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4234)
    #dbg_value(ptr %ar.data, !4235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4240)
    #dbg_value(i64 %ar.len, !4235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4240)
    #dbg_value(i64 %ar.cap, !4235, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4240)
    #dbg_value({ ptr, i64, i64 } poison, !4235, !DIExpression(), !4242)
    #dbg_value(ptr %ar.data, !4243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4247)
    #dbg_value(i64 %ar.len, !4243, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4247)
    #dbg_value(i64 %ar.cap, !4243, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4247)
    #dbg_value({ ptr, i64, i64 } poison, !4243, !DIExpression(), !4249)
    #dbg_value(i64 %ar.len, !4246, !DIExpression(), !4250)
    #dbg_value({ ptr, i64, i64 } poison, !4243, !DIExpression(), !4251)
    #dbg_value(i64 %ar.len, !4246, !DIExpression(), !4252)
    #dbg_value(i64 %ar.len, !4246, !DIExpression(), !4253)
    #dbg_value(i64 %ar.len, !4010, !DIExpression(), !4254)
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %ar.len, i1 false), !dbg !4254
  %1 = sub nuw nsw i64 64, %0, !dbg !4254
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %ar.data, i64 %ar.len, i64 0, i64 %ar.len, i64 %1), !dbg !4256
    #dbg_value(i64 0, !4230, !DIExpression(), !4257)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4258)
  %2 = icmp sgt i64 %n, 0, !dbg !4259
  br i1 %2, label %for.loop1.preheader.lr.ph, label %for.done3, !dbg !4260

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %3 = add nsw i64 %n, -1
  br label %for.loop1.preheader, !dbg !4260

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %for.done
  %4 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %19, %for.done ]
  %5 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %x.y.i, %for.done ]
    #dbg_value(i64 %4, !4230, !DIExpression(), !4261)
    #dbg_value(i64 %4, !4230, !DIExpression(), !4262)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4263)
  %6 = icmp slt i64 %4, %3, !dbg !4264
  br i1 %6, label %for.body2.preheader, label %for.done, !dbg !4260

for.body2.preheader:                              ; preds = %for.loop1.preheader
  %7 = sub i64 %n, %4, !dbg !4265
  %umax = call i64 @llvm.umax.i64(i64 %4, i64 %ar.len), !dbg !4265
  %8 = add i64 %umax, 1, !dbg !4265
  %9 = sub i64 %8, %4, !dbg !4265
  br label %for.body2, !dbg !4265

for.body2:                                        ; preds = %for.body2.preheader, %if.then
  %10 = phi i64 [ %18, %if.then ], [ 1, %for.body2.preheader ]
  %11 = phi i64 [ %12, %if.then ], [ %4, %for.body2.preheader ]
    #dbg_value(i64 %11, !4230, !DIExpression(), !4262)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4266)
    #dbg_value(i64 %11, !4230, !DIExpression(), !4267)
  %exitcond.not = icmp eq i64 %10, %9, !dbg !4265
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !4265

lookup.next:                                      ; preds = %for.body2
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4268)
    #dbg_value(i64 %11, !4230, !DIExpression(), !4269)
  %12 = add nuw nsw i64 %11, 1, !dbg !4270
  %.not3 = icmp ult i64 %12, %ar.len, !dbg !4271
  br i1 %.not3, label %lookup.next7, label %lookup.throw6, !dbg !4271

lookup.next7:                                     ; preds = %lookup.next
  %13 = getelementptr inbounds i64, ptr %ar.data, i64 %11, !dbg !4265
  %14 = load i64, ptr %13, align 8, !dbg !4265
  %15 = getelementptr inbounds i64, ptr %ar.data, i64 %12, !dbg !4271
  %16 = load i64, ptr %15, align 8, !dbg !4271
  %17 = icmp eq i64 %14, %16, !dbg !4272
  br i1 %17, label %if.then, label %for.done, !dbg !4260

if.then:                                          ; preds = %lookup.next7
  %18 = add i64 %10, 1, !dbg !4273
    #dbg_value(i64 %18, !4231, !DIExpression(), !4273)
    #dbg_value(i64 %12, !4230, !DIExpression(), !4262)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4263)
  %exitcond20.not = icmp eq i64 %18, %7, !dbg !4264
  br i1 %exitcond20.not, label %for.done, label %for.body2, !dbg !4260

for.done:                                         ; preds = %if.then, %lookup.next7, %for.loop1.preheader
  %.lcssa10 = phi i64 [ %4, %for.loop1.preheader ], [ %3, %if.then ], [ %11, %lookup.next7 ], !dbg !4257
  %.lcssa = phi i64 [ 1, %for.loop1.preheader ], [ %7, %if.then ], [ %10, %lookup.next7 ], !dbg !4274
    #dbg_value(i64 %5, !4229, !DIExpression(), !4275)
    #dbg_value(i64 %.lcssa, !4231, !DIExpression(), !4276)
    #dbg_value(i64 %5, !4277, !DIExpression(), !4281)
    #dbg_value(i64 %.lcssa, !4280, !DIExpression(), !4283)
  %x.y.i = call i64 @llvm.smax.i64(i64 %5, i64 %.lcssa), !dbg !4284
    #dbg_value(i64 %x.y.i, !4229, !DIExpression(), !4285)
  %19 = add i64 %.lcssa10, 1, !dbg !4286
    #dbg_value(i64 %19, !4230, !DIExpression(), !4261)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4258)
  %20 = icmp slt i64 %19, %n, !dbg !4259
  br i1 %20, label %for.loop1.preheader, label %for.done3, !dbg !4260

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa13 = phi i64 [ 0, %entry ], [ %x.y.i, %for.done ], !dbg !4233
    #dbg_value(i64 %.lcssa13, !4229, !DIExpression(), !4287)
  ret i64 %.lcssa13, !dbg !4288

lookup.throw:                                     ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !4265
  unreachable, !dbg !4265

lookup.throw6:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !4271
  unreachable, !dbg !4271
}
