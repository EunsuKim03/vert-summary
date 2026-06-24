define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #0 !dbg !38013 {
entry:
    #dbg_value(ptr %arr.data, !38017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38024)
    #dbg_value(i64 %arr.len, !38017, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38024)
    #dbg_value(i64 %arr.cap, !38017, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38024)
    #dbg_value(i64 %n, !38018, !DIExpression(), !38024)
    #dbg_value(i64 0, !38019, !DIExpression(), !38025)
    #dbg_value(i64 -1, !38020, !DIExpression(), !38026)
    #dbg_value(i64 0, !38021, !DIExpression(), !38027)
    #dbg_value(i64 0, !38022, !DIExpression(), !38028)
  %stackalloc6 = alloca [16 x i8], align 8, !dbg !38029
  %stackalloc = alloca [16 x i8], align 8, !dbg !38029
  %0 = add i64 %n, -1
  %1 = icmp sgt i64 %0, 0, !dbg !38030
  br i1 %1, label %for.body.preheader, label %if.then9, !dbg !38029

for.body.preheader:                               ; preds = %entry
  %2 = add i64 %n, -2, !dbg !38031
  br label %for.body, !dbg !38031

for.body:                                         ; preds = %for.body.preheader, %for.done
  %indvars.iv48 = phi i64 [ %2, %for.body.preheader ], [ %indvars.iv.next49, %for.done ]
  %indvars.iv.in = phi i64 [ %arr.len, %for.body.preheader ], [ %indvars.iv, %for.done ]
  %3 = phi i64 [ 0, %for.body.preheader ], [ %5, %for.done ]
  %4 = phi i64 [ -1, %for.body.preheader ], [ %.lcssa, %for.done ]
  %indvars.iv = add i64 %indvars.iv.in, -1, !dbg !38029
    #dbg_value({ ptr, i64, i64 } poison, !38017, !DIExpression(), !38032)
    #dbg_value(i64 %3, !38022, !DIExpression(), !38033)
  %exitcond50.not = icmp eq i64 %3, %arr.len, !dbg !38031
  br i1 %exitcond50.not, label %lookup.throw, label %lookup.next, !dbg !38031

lookup.next:                                      ; preds = %for.body
    #dbg_value(i64 %3, !38022, !DIExpression(), !38034)
    #dbg_value(i64 %3, !38023, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !38035)
  %5 = add nuw nsw i64 %3, 1, !dbg !38036
  %6 = icmp slt i64 %5, %n, !dbg !38037
  br i1 %6, label %for.body2.lr.ph, label %for.done, !dbg !38029

for.body2.lr.ph:                                  ; preds = %lookup.next
  %.not.not = icmp ugt i64 %indvars.iv, %indvars.iv48, !dbg !38029
  br i1 %.not.not, label %for.body2.lr.ph.split, label %lookup.throw14, !dbg !38038

for.body2.lr.ph.split:                            ; preds = %for.body2.lr.ph
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %3, !dbg !38031
  %8 = load i64, ptr %7, align 8, !dbg !38031
  %9 = icmp eq i64 %8, 0, !dbg !38039
  %. = select i1 %9, i64 -1, i64 1, !dbg !38029
  br label %for.body2, !dbg !38029

for.body2:                                        ; preds = %for.body2.lr.ph.split, %for.body2
  %10 = phi i64 [ %5, %for.body2.lr.ph.split ], [ %20, %for.body2 ]
  %11 = phi i64 [ %4, %for.body2.lr.ph.split ], [ %19, %for.body2 ]
  %12 = phi i64 [ %., %for.body2.lr.ph.split ], [ %16, %for.body2 ]
    #dbg_value({ ptr, i64, i64 } poison, !38017, !DIExpression(), !38040)
    #dbg_value(i64 %10, !38023, !DIExpression(), !38041)
  %13 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %10, !dbg !38038
  %14 = load i64, ptr %13, align 8, !dbg !38038
  %15 = icmp eq i64 %14, 0, !dbg !38042
  %.v = select i1 %15, i64 -1, i64 1, !dbg !38029
  %16 = add i64 %.v, %12, !dbg !38029
    #dbg_value(i64 %16, !38019, !DIExpression(), !38043)
  %17 = icmp eq i64 %16, 0, !dbg !38044
  %reass.sub = sub nuw nsw i64 %10, %3, !dbg !38029
  %18 = add nuw i64 %reass.sub, 1, !dbg !38029
  %spec.select = tail call i64 @llvm.smax.i64(i64 %11, i64 %18), !dbg !38029
  %19 = select i1 %17, i64 %spec.select, i64 %11, !dbg !38029
    #dbg_value(i64 %10, !38023, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !38045)
  %20 = add nuw nsw i64 %10, 1, !dbg !38036
    #dbg_value(i64 %20, !38023, !DIExpression(), !38046)
    #dbg_value(i64 %n, !38018, !DIExpression(), !38047)
  %exitcond.not = icmp eq i64 %20, %n, !dbg !38037
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !38029

for.done:                                         ; preds = %for.body2, %lookup.next
  %.lcssa = phi i64 [ %4, %lookup.next ], [ %19, %for.body2 ], !dbg !38026
    #dbg_value(i64 %5, !38022, !DIExpression(), !38048)
    #dbg_value(i64 %n, !38018, !DIExpression(), !38049)
  %indvars.iv.next49 = add i64 %indvars.iv48, -1, !dbg !38029
  %exitcond51.not = icmp eq i64 %5, %0, !dbg !38030
  br i1 %exitcond51.not, label %for.done8, label %for.body, !dbg !38029

for.done8:                                        ; preds = %for.done
    #dbg_value(i64 %.lcssa, !38020, !DIExpression(), !38050)
  %21 = icmp eq i64 %.lcssa, -1, !dbg !38051
  br i1 %21, label %if.then9, label %if.done10, !dbg !38029

if.then9:                                         ; preds = %entry, %for.done8
  br label %if.done10, !dbg !38029

if.done10:                                        ; preds = %for.done8, %if.then9
  %stackalloc.sink71 = phi ptr [ %stackalloc6, %if.then9 ], [ %stackalloc, %for.done8 ]
  %"main$pack.2.sink" = phi ptr [ @"main$pack", %if.then9 ], [ @"main$pack.2", %for.done8 ]
  %.lcssa4353 = phi i64 [ -1, %if.then9 ], [ %.lcssa, %for.done8 ]
  %stackalloc.repack16 = getelementptr inbounds nuw i8, ptr %stackalloc.sink71, i64 8, !dbg !38029
  store ptr @"reflect/types.type:basic:string", ptr %stackalloc.sink71, align 8, !dbg !38029
  store ptr %"main$pack.2.sink", ptr %stackalloc.repack16, align 8, !dbg !38029
  call fastcc void @fmt.Print(ptr nonnull %stackalloc.sink71), !dbg !38029
    #dbg_value(i64 %.lcssa4353, !38020, !DIExpression(), !38052)
  ret i64 %.lcssa4353, !dbg !38053

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !38031
  unreachable, !dbg !38031

lookup.throw14:                                   ; preds = %for.body2.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !38038
  unreachable, !dbg !38038
}
