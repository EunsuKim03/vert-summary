define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #0 !dbg !44017 {
entry:
    #dbg_value(ptr %arr.data, !44021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !44028)
    #dbg_value(i64 %arr.len, !44021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !44028)
    #dbg_value(i64 %arr.cap, !44021, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !44028)
    #dbg_value(i64 %n, !44022, !DIExpression(), !44028)
    #dbg_value(i64 0, !44023, !DIExpression(), !44029)
    #dbg_value(i64 -1, !44024, !DIExpression(), !44030)
    #dbg_value(i64 0, !44025, !DIExpression(), !44031)
    #dbg_value(i64 0, !44025, !DIExpression(), !44032)
    #dbg_value(i64 0, !44026, !DIExpression(), !44033)
  %stackalloc6 = alloca [16 x i8], align 8, !dbg !44034
  %stackalloc = alloca [16 x i8], align 8, !dbg !44034
  %0 = add i64 %n, -1
    #dbg_value(i64 0, !44026, !DIExpression(), !44035)
    #dbg_value(i64 %n, !44022, !DIExpression(), !44036)
  %1 = icmp sgt i64 %0, 0, !dbg !44037
  br i1 %1, label %for.body.preheader, label %for.done8, !dbg !44034

for.body.preheader:                               ; preds = %entry
  %2 = add i64 %n, -2, !dbg !44038
  br label %for.body, !dbg !44038

for.body:                                         ; preds = %for.body.preheader, %for.done
  %indvars.iv48 = phi i64 [ %2, %for.body.preheader ], [ %indvars.iv.next49, %for.done ]
  %indvars.iv.in = phi i64 [ %arr.len, %for.body.preheader ], [ %indvars.iv, %for.done ]
  %3 = phi i64 [ 0, %for.body.preheader ], [ %21, %for.done ]
  %4 = phi i64 [ -1, %for.body.preheader ], [ %.lcssa, %for.done ]
  %indvars.iv = add i64 %indvars.iv.in, -1, !dbg !44034
    #dbg_value(i64 %3, !44026, !DIExpression(), !44035)
    #dbg_value({ ptr, i64, i64 } poison, !44021, !DIExpression(), !44039)
    #dbg_value(i64 %3, !44026, !DIExpression(), !44040)
  %exitcond50.not = icmp eq i64 %3, %arr.len, !dbg !44038
  br i1 %exitcond50.not, label %lookup.throw, label %lookup.next, !dbg !44038

lookup.next:                                      ; preds = %for.body
    #dbg_value(i64 %3, !44026, !DIExpression(), !44041)
    #dbg_value(i64 %3, !44027, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !44042)
  %5 = add nuw nsw i64 %3, 1, !dbg !44043
  %6 = icmp slt i64 %5, %n, !dbg !44044
  br i1 %6, label %for.body2.lr.ph, label %for.done, !dbg !44034

for.body2.lr.ph:                                  ; preds = %lookup.next
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %3, !dbg !44038
  %8 = load i64, ptr %7, align 8, !dbg !44038
  %9 = icmp eq i64 %8, 0, !dbg !44045
  %. = select i1 %9, i64 -1, i64 1, !dbg !44034
  %.not.not = icmp ugt i64 %indvars.iv, %indvars.iv48, !dbg !44034
  br label %for.body2, !dbg !44034

for.body2:                                        ; preds = %for.body2.lr.ph, %lookup.next15
  %10 = phi i64 [ %5, %for.body2.lr.ph ], [ %20, %lookup.next15 ]
  %11 = phi i64 [ %4, %for.body2.lr.ph ], [ %19, %lookup.next15 ]
  %12 = phi i64 [ %., %for.body2.lr.ph ], [ %16, %lookup.next15 ]
    #dbg_value({ ptr, i64, i64 } poison, !44021, !DIExpression(), !44046)
    #dbg_value(i64 %10, !44027, !DIExpression(), !44047)
  br i1 %.not.not, label %lookup.next15, label %lookup.throw14, !dbg !44048

lookup.next15:                                    ; preds = %for.body2
  %13 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %10, !dbg !44048
  %14 = load i64, ptr %13, align 8, !dbg !44048
  %15 = icmp eq i64 %14, 0, !dbg !44049
  %.v = select i1 %15, i64 -1, i64 1, !dbg !44034
  %16 = add i64 %.v, %12, !dbg !44034
    #dbg_value(i64 %16, !44023, !DIExpression(), !44050)
  %17 = icmp eq i64 %16, 0, !dbg !44051
  %reass.sub = sub nuw nsw i64 %10, %3, !dbg !44034
  %18 = add nuw i64 %reass.sub, 1, !dbg !44034
  %spec.select = call i64 @llvm.smax.i64(i64 %11, i64 %18), !dbg !44034
  %19 = select i1 %17, i64 %spec.select, i64 %11, !dbg !44034
    #dbg_value(i64 %10, !44027, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !44052)
  %20 = add nuw nsw i64 %10, 1, !dbg !44043
    #dbg_value(i64 %20, !44027, !DIExpression(), !44053)
    #dbg_value(i64 %n, !44022, !DIExpression(), !44054)
  %exitcond.not = icmp eq i64 %20, %n, !dbg !44044
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !44034

for.done:                                         ; preds = %lookup.next15, %lookup.next
  %.lcssa = phi i64 [ %4, %lookup.next ], [ %19, %lookup.next15 ], !dbg !44030
  %21 = add nuw nsw i64 %3, 1, !dbg !44055
    #dbg_value(i64 %21, !44026, !DIExpression(), !44035)
    #dbg_value(i64 %n, !44022, !DIExpression(), !44036)
  %indvars.iv.next49 = add i64 %indvars.iv48, -1, !dbg !44034
  %exitcond51.not = icmp eq i64 %21, %0, !dbg !44037
  br i1 %exitcond51.not, label %for.done8, label %for.body, !dbg !44034

for.done8:                                        ; preds = %for.done, %entry
  %.lcssa43 = phi i64 [ -1, %entry ], [ %.lcssa, %for.done ], !dbg !44030
    #dbg_value(i64 %.lcssa43, !44024, !DIExpression(), !44056)
  %22 = icmp eq i64 %.lcssa43, -1, !dbg !44057
  br i1 %22, label %if.then9, label %if.else11, !dbg !44034

if.then9:                                         ; preds = %for.done8
  %stackalloc6.repack31 = getelementptr inbounds nuw i8, ptr %stackalloc6, i64 8, !dbg !44058
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %stackalloc6, i8 0, i64 16, i1 false), !dbg !44058
  store ptr @"reflect/types.type:basic:string", ptr %stackalloc6, align 8, !dbg !44058
  store ptr @"main$pack", ptr %stackalloc6.repack31, align 8, !dbg !44058
  call fastcc void @fmt.Print(ptr nonnull %stackalloc6), !dbg !44059
  br label %if.done10, !dbg !44034

if.done10:                                        ; preds = %if.else11, %if.then9
    #dbg_value(i64 %.lcssa43, !44024, !DIExpression(), !44060)
  ret i64 %.lcssa43, !dbg !44061

if.else11:                                        ; preds = %for.done8
  %stackalloc.repack16 = getelementptr inbounds nuw i8, ptr %stackalloc, i64 8, !dbg !44062
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %stackalloc, i8 0, i64 16, i1 false), !dbg !44062
  store ptr @"reflect/types.type:basic:string", ptr %stackalloc, align 8, !dbg !44062
  store ptr @"main$pack.2", ptr %stackalloc.repack16, align 8, !dbg !44062
  call fastcc void @fmt.Print(ptr nonnull %stackalloc), !dbg !44063
  br label %if.done10, !dbg !44034

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !44038
  unreachable, !dbg !44038

lookup.throw14:                                   ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !44048
  unreachable, !dbg !44048
}
