define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, ptr nocapture %b.data, i64 %b.len, i64 %b.cap, i64 %n) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %a.data, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4232)
    #dbg_value(i64 %a.len, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4232)
    #dbg_value(i64 %a.cap, !4227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4232)
    #dbg_value(ptr %b.data, !4228, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4232)
    #dbg_value(i64 %b.len, !4228, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4232)
    #dbg_value(i64 %b.cap, !4228, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4232)
    #dbg_value(i64 %n, !4229, !DIExpression(), !4232)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4233)
    #dbg_value(ptr %a.data, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4239)
    #dbg_value(i64 %a.len, !4234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4239)
    #dbg_value(i64 %a.cap, !4234, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4239)
    #dbg_value({ ptr, i64, i64 } poison, !4234, !DIExpression(), !4241)
    #dbg_value(ptr %a.data, !4242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4246)
    #dbg_value(i64 %a.len, !4242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4246)
    #dbg_value(i64 %a.cap, !4242, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4246)
    #dbg_value({ ptr, i64, i64 } poison, !4242, !DIExpression(), !4248)
    #dbg_value(i64 %a.len, !4245, !DIExpression(), !4249)
    #dbg_value({ ptr, i64, i64 } poison, !4242, !DIExpression(), !4250)
    #dbg_value(i64 %a.len, !4245, !DIExpression(), !4251)
    #dbg_value(i64 %a.len, !4245, !DIExpression(), !4252)
    #dbg_value(i64 %a.len, !4010, !DIExpression(), !4253)
  %0 = freeze i64 %b.len, !dbg !4255
  %n.fr = freeze i64 %n, !dbg !4255
  %1 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %a.len, i1 false), !dbg !4253
  %2 = sub nuw nsw i64 64, %1, !dbg !4253
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %a.data, i64 %a.len, i64 0, i64 %a.len, i64 %2), !dbg !4256
    #dbg_value({ ptr, i64, i64 } poison, !4228, !DIExpression(), !4257)
    #dbg_value(ptr %b.data, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4258)
    #dbg_value(i64 %b.len, !4234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4258)
    #dbg_value(i64 %b.cap, !4234, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4258)
    #dbg_value({ ptr, i64, i64 } poison, !4234, !DIExpression(), !4260)
    #dbg_value(ptr %b.data, !4242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4261)
    #dbg_value(i64 %b.len, !4242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4261)
    #dbg_value(i64 %b.cap, !4242, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4261)
    #dbg_value({ ptr, i64, i64 } poison, !4242, !DIExpression(), !4263)
    #dbg_value(i64 %b.len, !4245, !DIExpression(), !4264)
    #dbg_value({ ptr, i64, i64 } poison, !4242, !DIExpression(), !4265)
    #dbg_value(i64 %b.len, !4245, !DIExpression(), !4266)
    #dbg_value(i64 %b.len, !4245, !DIExpression(), !4267)
    #dbg_value(i64 %b.len, !4010, !DIExpression(), !4268)
  %3 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 false), !dbg !4268
  %4 = sub nuw nsw i64 64, %3, !dbg !4268
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %b.data, i64 %0, i64 0, i64 %0, i64 %4), !dbg !4270
    #dbg_value(i64 0, !4230, !DIExpression(), !4271)
    #dbg_value(i64 0, !4231, !DIExpression(), !4272)
    #dbg_value(i64 %n, !4229, !DIExpression(), !4273)
  %5 = icmp sgt i64 %n.fr, 0, !dbg !4274
  br i1 %5, label %for.body.preheader, label %for.done, !dbg !4275

for.body.preheader:                               ; preds = %entry
  %6 = add nsw i64 %n.fr, -1, !dbg !4255
  %umin = call i64 @llvm.umin.i64(i64 %6, i64 %0), !dbg !4255
  %umin5 = call i64 @llvm.umin.i64(i64 %umin, i64 %a.len), !dbg !4255
  %.not.not = icmp ugt i64 %a.len, %umin, !dbg !4255
  %.not = icmp eq i64 %0, %umin5, !dbg !4255
  br label %for.body, !dbg !4255

for.body:                                         ; preds = %for.body.preheader, %lookup.next4
  %7 = phi i64 [ %18, %lookup.next4 ], [ 0, %for.body.preheader ]
  %8 = phi i64 [ %17, %lookup.next4 ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %7, !4231, !DIExpression(), !4276)
    #dbg_value(i64 %8, !4230, !DIExpression(), !4277)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4278)
    #dbg_value(i64 %7, !4231, !DIExpression(), !4279)
  br i1 %.not.not, label %lookup.next, label %lookup.throw, !dbg !4255

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !4228, !DIExpression(), !4280)
    #dbg_value(i64 %7, !4231, !DIExpression(), !4281)
  br i1 %.not, label %lookup.throw3, label %lookup.next4, !dbg !4282

lookup.next4:                                     ; preds = %lookup.next
  %9 = getelementptr inbounds nuw i64, ptr %a.data, i64 %7, !dbg !4255
  %10 = load i64, ptr %9, align 8, !dbg !4255
  %11 = getelementptr inbounds nuw i64, ptr %b.data, i64 %7, !dbg !4282
  %12 = load i64, ptr %11, align 8, !dbg !4282
  %13 = sub i64 %10, %12, !dbg !4283
  %14 = sitofp i64 %13 to double, !dbg !4284
    #dbg_value(double %14, !4285, !DIExpression(), !4291)
  %15 = call double @llvm.fabs.f64(double %14), !dbg !4293
  %belowmax = fcmp ole double %15, 0x43DFFFFFFFFFFFFE, !dbg !4294
  %normal = fptosi double %15 to i64, !dbg !4294
  %16 = select i1 %belowmax, i64 %normal, i64 9223372036854775807, !dbg !4294
  %17 = add i64 %16, %8, !dbg !4295
    #dbg_value(i64 %17, !4230, !DIExpression(), !4296)
  %18 = add nuw nsw i64 %7, 1, !dbg !4297
    #dbg_value(i64 %18, !4231, !DIExpression(), !4276)
    #dbg_value(i64 %n, !4229, !DIExpression(), !4273)
  %exitcond.not = icmp eq i64 %18, %n.fr, !dbg !4274
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4275

for.done:                                         ; preds = %lookup.next4, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %17, %lookup.next4 ], !dbg !4271
    #dbg_value(i64 %.lcssa, !4230, !DIExpression(), !4298)
  ret i64 %.lcssa, !dbg !4299

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4255
  unreachable, !dbg !4255

lookup.throw3:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !4282
  unreachable, !dbg !4282
}
