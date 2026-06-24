define noundef i1 @f_gold(ptr nocapture %A.data, i64 %A.len, i64 %A.cap, i64 %arr_size, i64 %sum) local_unnamed_addr #0 !dbg !44580 {
entry:
    #dbg_value(ptr %A.data, !44582, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !44588)
    #dbg_value(i64 %A.len, !44582, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !44588)
    #dbg_value(i64 %A.cap, !44582, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !44588)
    #dbg_value(i64 %arr_size, !44583, !DIExpression(), !44588)
    #dbg_value(i64 %sum, !44584, !DIExpression(), !44588)
    #dbg_value(i64 0, !44585, !DIExpression(), !44589)
    #dbg_value(i64 0, !44586, !DIExpression(), !44590)
    #dbg_value({ ptr, i64, i64 } poison, !44582, !DIExpression(), !44591)
  %stackalloc = alloca [64 x i8], align 8, !dbg !44592
    #dbg_value(ptr %A.data, !44593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !44598)
    #dbg_value(i64 %A.len, !44593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !44598)
    #dbg_value(i64 %A.cap, !44593, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !44598)
    #dbg_value({ ptr, i64, i64 } poison, !44593, !DIExpression(), !44600)
    #dbg_value(ptr %A.data, !44601, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !44605)
    #dbg_value(i64 %A.len, !44601, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !44605)
    #dbg_value(i64 %A.cap, !44601, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !44605)
    #dbg_value({ ptr, i64, i64 } poison, !44601, !DIExpression(), !44607)
    #dbg_value(i64 %A.len, !44604, !DIExpression(), !44608)
    #dbg_value({ ptr, i64, i64 } poison, !44601, !DIExpression(), !44609)
    #dbg_value(i64 %A.len, !44604, !DIExpression(), !44610)
    #dbg_value(i64 %A.len, !44604, !DIExpression(), !44611)
    #dbg_value(i64 %A.len, !11164, !DIExpression(), !44612)
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %A.len, i1 false), !dbg !44612
  %1 = sub nuw nsw i64 64, %0, !dbg !44612
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %A.data, i64 %A.len, i64 0, i64 %A.len, i64 %1), !dbg !44614
    #dbg_value(i64 0, !44587, !DIExpression(), !44615)
  %2 = add i64 %arr_size, -2
    #dbg_value(i64 0, !44587, !DIExpression(), !44616)
    #dbg_value(i64 %arr_size, !44583, !DIExpression(), !44617)
  %3 = icmp sgt i64 %2, 0, !dbg !44618
  br i1 %3, label %for.body.lr.ph, label %common.ret, !dbg !44619

for.body.lr.ph:                                   ; preds = %entry
  %4 = add i64 %arr_size, -1
  br label %for.body, !dbg !44619

for.loop.loopexit:                                ; preds = %if.then3, %if.else4, %for.body
    #dbg_value(i64 %6, !44587, !DIExpression(), !44616)
    #dbg_value(i64 %arr_size, !44583, !DIExpression(), !44617)
  %exitcond117.not = icmp eq i64 %6, %2, !dbg !44618
  br i1 %exitcond117.not, label %common.ret, label %for.body, !dbg !44619

for.body:                                         ; preds = %for.body.lr.ph, %for.loop.loopexit
  %5 = phi i64 [ 0, %for.body.lr.ph ], [ %6, %for.loop.loopexit ]
    #dbg_value(i64 %5, !44587, !DIExpression(), !44616)
    #dbg_value(i64 %5, !44587, !DIExpression(), !44620)
  %6 = add nuw nsw i64 %5, 1, !dbg !44621
    #dbg_value(i64 %6, !44585, !DIExpression(), !44622)
    #dbg_value(i64 %arr_size, !44583, !DIExpression(), !44623)
    #dbg_value(i64 %4, !44586, !DIExpression(), !44624)
    #dbg_value(i64 %6, !44585, !DIExpression(), !44625)
  %7 = icmp slt i64 %6, %4, !dbg !44626
  br i1 %7, label %for.body2.lr.ph.lr.ph, label %for.loop.loopexit, !dbg !44619

for.body2.lr.ph.lr.ph:                            ; preds = %for.body
  %.not = icmp ult i64 %5, %A.len
  %8 = getelementptr inbounds nuw i64, ptr %A.data, i64 %5
  br i1 %.not, label %for.body2.lr.ph, label %lookup.throw, !dbg !44627

for.body2.lr.ph:                                  ; preds = %for.body2.lr.ph.lr.ph, %if.then3
  %.ph86103 = phi i64 [ %10, %if.then3 ], [ %4, %for.body2.lr.ph.lr.ph ]
  %.ph102 = phi i64 [ %77, %if.then3 ], [ %6, %for.body2.lr.ph.lr.ph ]
    #dbg_value(i64 %.ph86103, !44586, !DIExpression(), !44628)
    #dbg_value(i64 %.ph102, !44585, !DIExpression(), !44625)
  %9 = getelementptr inbounds nuw i64, ptr %A.data, i64 %.ph102
  %exitcond.not = icmp eq i64 %.ph102, %A.len
  br i1 %exitcond.not, label %lookup.throw8, label %for.body2, !dbg !44629

for.body2:                                        ; preds = %for.body2.lr.ph, %if.else4
  %10 = phi i64 [ %79, %if.else4 ], [ %.ph86103, %for.body2.lr.ph ]
    #dbg_value(i64 %10, !44586, !DIExpression(), !44628)
    #dbg_value({ ptr, i64, i64 } poison, !44582, !DIExpression(), !44630)
    #dbg_value(i64 poison, !44587, !DIExpression(), !44631)
    #dbg_value({ ptr, i64, i64 } poison, !44582, !DIExpression(), !44632)
    #dbg_value(i64 %.ph102, !44585, !DIExpression(), !44633)
    #dbg_value({ ptr, i64, i64 } poison, !44582, !DIExpression(), !44634)
    #dbg_value(i64 %10, !44586, !DIExpression(), !44635)
  %.not4 = icmp ult i64 %10, %A.len, !dbg !44636
  br i1 %.not4, label %lookup.next13, label %lookup.throw12, !dbg !44636

lookup.next13:                                    ; preds = %for.body2
  %11 = load i64, ptr %8, align 8, !dbg !44627
  %12 = load i64, ptr %9, align 8, !dbg !44629
  %13 = add i64 %12, %11, !dbg !44637
  %14 = getelementptr inbounds i64, ptr %A.data, i64 %10, !dbg !44636
  %15 = load i64, ptr %14, align 8, !dbg !44636
  %16 = add i64 %13, %15, !dbg !44638
    #dbg_value(i64 %sum, !44584, !DIExpression(), !44639)
  %17 = icmp eq i64 %16, %sum, !dbg !44640
  br i1 %17, label %lookup.next25, label %lookup.next39, !dbg !44619

common.ret:                                       ; preds = %for.loop.loopexit, %entry, %gep.next5.i.i.i17.i.i, %runtime.sliceAppend.exit.i.i.i.i
  %18 = phi i1 [ true, %gep.next5.i.i.i17.i.i ], [ true, %runtime.sliceAppend.exit.i.i.i.i ], [ false, %entry ], [ false, %for.loop.loopexit ]
  ret i1 %18, !dbg !44619

lookup.next25:                                    ; preds = %lookup.next13
    #dbg_value({ ptr, i64, i64 } poison, !44582, !DIExpression(), !44641)
    #dbg_value(i64 poison, !44587, !DIExpression(), !44642)
    #dbg_value({ ptr, i64, i64 } poison, !44582, !DIExpression(), !44643)
    #dbg_value(i64 poison, !44585, !DIExpression(), !44644)
    #dbg_value({ ptr, i64, i64 } poison, !44582, !DIExpression(), !44645)
    #dbg_value(i64 undef, !44586, !DIExpression(), !44646)
  %stackalloc.repack27 = getelementptr inbounds nuw i8, ptr %stackalloc, i64 8, !dbg !44647
  %stackalloc.repack35 = getelementptr inbounds nuw i8, ptr %stackalloc, i64 16, !dbg !44647
  %stackalloc.repack43 = getelementptr inbounds nuw i8, ptr %stackalloc, i64 24, !dbg !44647
  %stackalloc.repack51 = getelementptr inbounds nuw i8, ptr %stackalloc, i64 32, !dbg !44647
  %stackalloc.repack59 = getelementptr inbounds nuw i8, ptr %stackalloc, i64 40, !dbg !44647
  %stackalloc.repack67 = getelementptr inbounds nuw i8, ptr %stackalloc, i64 48, !dbg !44647
  %stackalloc.repack75 = getelementptr inbounds nuw i8, ptr %stackalloc, i64 56, !dbg !44647
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %stackalloc, i8 0, i64 64, i1 false), !dbg !44647
  store ptr @"reflect/types.type:basic:string", ptr %stackalloc, align 8, !dbg !44647
  store ptr @"main$pack", ptr %stackalloc.repack27, align 8, !dbg !44647
  %pack.int = inttoptr i64 %11 to ptr, !dbg !44648
  store ptr @"reflect/types.type:basic:int", ptr %stackalloc.repack35, align 8, !dbg !44648
  store ptr %pack.int, ptr %stackalloc.repack43, align 8, !dbg !44648
  %pack.int26 = inttoptr i64 %12 to ptr, !dbg !44649
  store ptr @"reflect/types.type:basic:int", ptr %stackalloc.repack51, align 8, !dbg !44649
  store ptr %pack.int26, ptr %stackalloc.repack59, align 8, !dbg !44649
  %pack.int27 = inttoptr i64 %15 to ptr, !dbg !44650
  store ptr @"reflect/types.type:basic:int", ptr %stackalloc.repack67, align 8, !dbg !44650
  store ptr %pack.int27, ptr %stackalloc.repack75, align 8, !dbg !44650
    #dbg_value(ptr %stackalloc, !44651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !44660)
    #dbg_value(i64 4, !44651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !44660)
    #dbg_value(i64 4, !44651, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !44660)
    #dbg_value({ ptr, i64, i64 } poison, !44651, !DIExpression(), !44662)
    #dbg_value(ptr @"reflect/types.type:pointer:named:os.File", !44663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !44672)
    #dbg_value(ptr @"os$alloc.173", !44663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !44672)
    #dbg_value(ptr %stackalloc, !44668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !44672)
    #dbg_value(i64 4, !44668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !44672)
    #dbg_value(i64 4, !44668, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !44672)
    #dbg_value(ptr @fmt.ppFree, !44674, !DIExpression(), !44682)
    #dbg_value(ptr @fmt.ppFree, !44674, !DIExpression(), !44691)
    #dbg_value(ptr @fmt.ppFree, !17017, !DIExpression(), !44692)
    #dbg_value(ptr @fmt.ppFree, !17017, !DIExpression(), !44694)
    #dbg_value(ptr @fmt.ppFree, !17024, !DIExpression(), !44695)
    #dbg_value(i32 0, !17029, !DIExpression(), !44695)
    #dbg_value(i32 1, !17030, !DIExpression(), !44695)
    #dbg_value(ptr @fmt.ppFree, !17024, !DIExpression(), !44697)
    #dbg_value(i32 0, !17029, !DIExpression(), !44698)
    #dbg_value(i32 1, !17030, !DIExpression(), !44699)
    #dbg_value(ptr @fmt.ppFree, !17036, !DIExpression(), !44700)
    #dbg_value(i32 0, !17041, !DIExpression(), !44700)
    #dbg_value(i32 1, !17042, !DIExpression(), !44700)
  %19 = cmpxchg ptr @fmt.ppFree, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !44700
  %20 = extractvalue { i32, i1 } %19, 1, !dbg !44700
  br i1 %20, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %for.loop.preheader.i.i.i.i.i, !dbg !44702

for.loop.preheader.i.i.i.i.i:                     ; preds = %lookup.next25
    #dbg_value(ptr @fmt.ppFree, !17017, !DIExpression(), !44703)
    #dbg_value(ptr @fmt.ppFree, !16969, !DIExpression(), !44704)
    #dbg_value(i32 2, !16976, !DIExpression(), !44704)
    #dbg_value(ptr @fmt.ppFree, !16969, !DIExpression(), !44706)
    #dbg_value(i32 2, !16976, !DIExpression(), !44707)
    #dbg_value(ptr @fmt.ppFree, !16981, !DIExpression(), !44708)
    #dbg_value(i32 2, !16987, !DIExpression(), !44708)
  %21 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !44708
  %.not4.i.i.i.i.i = icmp eq i32 %21, 0, !dbg !44710
  br i1 %.not4.i.i.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", !dbg !44702

"(*internal/futex.Futex).Wait.exit.i.i.i.i.i":    ; preds = %for.loop.preheader.i.i.i.i.i, %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !17017, !DIExpression(), !44711)
    #dbg_value(ptr @fmt.ppFree, !17055, !DIExpression(), !44712)
    #dbg_value(i32 2, !17060, !DIExpression(), !44714)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree, i32 2) #27, !dbg !44715
    #dbg_value(ptr @fmt.ppFree, !16969, !DIExpression(), !44706)
    #dbg_value(i32 2, !16976, !DIExpression(), !44707)
    #dbg_value(ptr @fmt.ppFree, !16981, !DIExpression(), !44708)
    #dbg_value(i32 2, !16987, !DIExpression(), !44708)
  %22 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !44708
  %.not.i.i.i.i.i = icmp eq i32 %22, 0, !dbg !44710
  br i1 %.not.i.i.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", !dbg !44702

"(*internal/task.Mutex).Lock.exit.i.i.i.i":       ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", %for.loop.preheader.i.i.i.i.i, %lookup.next25
    #dbg_value(ptr @fmt.ppFree, !44674, !DIExpression(), !44716)
  %.unpack12.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !44717
  %23 = icmp sgt i64 %.unpack12.i.i.i.i, 0, !dbg !44718
  br i1 %23, label %deref.next8.i.i.i.i, label %gep.next28.i.i.i.i, !dbg !44719

deref.next8.i.i.i.i:                              ; preds = %"(*internal/task.Mutex).Lock.exit.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !44674, !DIExpression(), !44720)
    #dbg_value(ptr @fmt.ppFree, !44674, !DIExpression(), !44721)
  %24 = add nsw i64 %.unpack12.i.i.i.i, -1, !dbg !44722
    #dbg_value({ ptr, ptr } poison, !44680, !DIExpression(), !44723)
    #dbg_value(ptr @fmt.ppFree, !44674, !DIExpression(), !44724)
    #dbg_value(ptr @fmt.ppFree, !44674, !DIExpression(), !44725)
  %.unpack27.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !44726
    #dbg_value(ptr @fmt.ppFree, !44674, !DIExpression(), !44727)
  %slice.highmax.i.i.i.i = icmp ugt i64 %24, %.unpack27.i.i.i.i, !dbg !44728
  br i1 %slice.highmax.i.i.i.i, label %slice.throw.i.i.i.i, label %store.next.i.i.i.i, !dbg !44728

store.next.i.i.i.i:                               ; preds = %deref.next8.i.i.i.i
  %.unpack16.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !44729
  %25 = getelementptr inbounds nuw { ptr, ptr }, ptr %.unpack16.i.i.i.i, i64 %24, !dbg !44730
  %.elt23.i.i.i.i = getelementptr inbounds nuw i8, ptr %25, i64 8, !dbg !44730
  %.unpack24.i.i.i.i = load ptr, ptr %.elt23.i.i.i.i, align 8, !dbg !44730
  %.unpack22.i.i.i.i = load ptr, ptr %25, align 8, !dbg !44730
  store i64 %24, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !44731
    #dbg_value({ ptr, i64, i64 } poison, !44681, !DIExpression(), !44731)
    #dbg_value(ptr @fmt.ppFree, !44674, !DIExpression(), !44732)
  %26 = insertvalue { ptr, ptr } poison, ptr %.unpack22.i.i.i.i, 0, !dbg !44730
  %27 = insertvalue { ptr, ptr } %26, ptr %.unpack24.i.i.i.i, 1, !dbg !44730
    #dbg_value({ ptr, ptr } %27, !44680, !DIExpression(), !44723)
    #dbg_value(ptr @fmt.ppFree, !16964, !DIExpression(), !44733)
    #dbg_value(ptr @fmt.ppFree, !16964, !DIExpression(), !44735)
    #dbg_value(ptr @fmt.ppFree, !16969, !DIExpression(), !44736)
    #dbg_value(i32 0, !16976, !DIExpression(), !44736)
    #dbg_value(ptr @fmt.ppFree, !16969, !DIExpression(), !44738)
    #dbg_value(i32 0, !16976, !DIExpression(), !44739)
    #dbg_value(ptr @fmt.ppFree, !16981, !DIExpression(), !44740)
    #dbg_value(i32 0, !16987, !DIExpression(), !44740)
  %28 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !44740
    #dbg_value(i32 %28, !16965, !DIExpression(), !44742)
    #dbg_value(i32 %28, !16965, !DIExpression(), !44743)
  switch i32 %28, label %"(*sync.Pool).Get.exit.i.i.i" [
    i32 0, label %if.then.i.i.i.i.i
    i32 2, label %gep.next5.i.i.i.i.i
  ], !dbg !44744

if.then.i.i.i.i.i:                                ; preds = %store.next.i.i.i.i
  call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !44745
  unreachable, !dbg !44745

gep.next5.i.i.i.i.i:                              ; preds = %store.next.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !16964, !DIExpression(), !44746)
    #dbg_value(ptr @fmt.ppFree, !16995, !DIExpression(), !44747)
    #dbg_value(ptr @fmt.ppFree, !16995, !DIExpression(), !44749)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !44750
  br label %"(*sync.Pool).Get.exit.i.i.i", !dbg !44744

gep.next28.i.i.i.i:                               ; preds = %"(*internal/task.Mutex).Lock.exit.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !44674, !DIExpression(), !44751)
    #dbg_value(ptr @fmt.ppFree, !16964, !DIExpression(), !44752)
    #dbg_value(ptr @fmt.ppFree, !16964, !DIExpression(), !44754)
    #dbg_value(ptr @fmt.ppFree, !16969, !DIExpression(), !44755)
    #dbg_value(i32 0, !16976, !DIExpression(), !44755)
    #dbg_value(ptr @fmt.ppFree, !16969, !DIExpression(), !44757)
    #dbg_value(i32 0, !16976, !DIExpression(), !44758)
    #dbg_value(ptr @fmt.ppFree, !16981, !DIExpression(), !44759)
    #dbg_value(i32 0, !16987, !DIExpression(), !44759)
  %29 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !44759
    #dbg_value(i32 %29, !16965, !DIExpression(), !44761)
    #dbg_value(i32 %29, !16965, !DIExpression(), !44762)
  switch i32 %29, label %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i" [
    i32 0, label %if.then.i35.i.i.i.i
    i32 2, label %gep.next5.i34.i.i.i.i
  ], !dbg !44763

if.then.i35.i.i.i.i:                              ; preds = %gep.next28.i.i.i.i
  call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !44764
  unreachable, !dbg !44764

gep.next5.i34.i.i.i.i:                            ; preds = %gep.next28.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !16964, !DIExpression(), !44765)
    #dbg_value(ptr @fmt.ppFree, !16995, !DIExpression(), !44766)
    #dbg_value(ptr @fmt.ppFree, !16995, !DIExpression(), !44768)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !44769
  br label %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i", !dbg !44763

"(*internal/task.Mutex).Unlock.exit36.i.i.i.i":   ; preds = %gep.next5.i34.i.i.i.i, %gep.next28.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !44674, !DIExpression(), !44770)
  %.unpack14.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 16), align 8, !dbg !44771
  %30 = icmp eq ptr %.unpack14.i.i.i.i, null, !dbg !44772
  br i1 %30, label %"(*sync.Pool).Get.exit.i.i.i", label %fpcall.next.i.i.i.i, !dbg !44719

fpcall.next.i.i.i.i:                              ; preds = %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !44674, !DIExpression(), !44773)
  %.unpack.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 8), align 8, !dbg !44774
  %31 = call { ptr, ptr } %.unpack14.i.i.i.i(ptr %.unpack.i.i.i.i) #27, !dbg !44775
  br label %"(*sync.Pool).Get.exit.i.i.i", !dbg !44776

slice.throw.i.i.i.i:                              ; preds = %deref.next8.i.i.i.i
  call fastcc void @runtime.slicePanic(), !dbg !44728
  unreachable, !dbg !44728

"(*sync.Pool).Get.exit.i.i.i":                    ; preds = %fpcall.next.i.i.i.i, %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i", %gep.next5.i.i.i.i.i, %store.next.i.i.i.i
  %common.ret.op.i.i.i.i = phi { ptr, ptr } [ %31, %fpcall.next.i.i.i.i ], [ zeroinitializer, %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i" ], [ %27, %store.next.i.i.i.i ], [ %27, %gep.next5.i.i.i.i.i ]
  %interface.type.i.i.i = extractvalue { ptr, ptr } %common.ret.op.i.i.i.i, 0, !dbg !44777
  %typeassert.ok3.i.i.i = icmp eq ptr %interface.type.i.i.i, @"reflect/types.type:pointer:named:fmt.pp", !dbg !44777
  %typeassert.value.ptr.i.i.i = extractvalue { ptr, ptr } %common.ret.op.i.i.i.i, 1
    #dbg_value(i1 %typeassert.ok3.i.i.i, !33766, !DIExpression(), !44778)
    #dbg_value(i1 %typeassert.ok3.i.i.i, !33766, !DIExpression(), !44780)
  br i1 %typeassert.ok3.i.i.i, label %runtime.interfaceTypeAssert.exit.i.i.i, label %if.then.i.i.i.i, !dbg !44781

if.then.i.i.i.i:                                  ; preds = %"(*sync.Pool).Get.exit.i.i.i"
  call fastcc void @runtime.runtimePanic(ptr nonnull @"runtime$string.11", i64 18), !dbg !44782
  unreachable, !dbg !44781

runtime.interfaceTypeAssert.exit.i.i.i:           ; preds = %"(*sync.Pool).Get.exit.i.i.i"
    #dbg_value(ptr poison, !44686, !DIExpression(), !44783)
    #dbg_value(ptr poison, !44686, !DIExpression(), !44784)
  %.not.i.i.i = icmp eq ptr %typeassert.value.ptr.i.i.i, null, !dbg !44785
  br i1 %.not.i.i.i, label %gep.throw.i.i.i, label %fmt.newPrinter.exit.i.i, !dbg !44785

gep.throw.i.i.i:                                  ; preds = %runtime.interfaceTypeAssert.exit.i.i.i
  call fastcc void @runtime.nilPanic(), !dbg !44785
  unreachable, !dbg !44785

fmt.newPrinter.exit.i.i:                          ; preds = %runtime.interfaceTypeAssert.exit.i.i.i
  %32 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 178, !dbg !44785
  store i1 false, ptr %32, align 1, !dbg !44785
    #dbg_value(i1 false, !44687, !DIExpression(), !44785)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44686, !DIExpression(), !44786)
  %33 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 179, !dbg !44787
  store i1 false, ptr %33, align 1, !dbg !44787
    #dbg_value(i1 false, !44688, !DIExpression(), !44787)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44686, !DIExpression(), !44788)
  %34 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 180, !dbg !44789
  store i1 false, ptr %34, align 1, !dbg !44789
    #dbg_value(i1 false, !44689, !DIExpression(), !44789)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44686, !DIExpression(), !44790)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44686, !DIExpression(), !44791)
  %35 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 64, !dbg !44792
    #dbg_value(ptr %35, !44793, !DIExpression(), !44800)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44798, !DIExpression(), !44800)
    #dbg_value(ptr %35, !44793, !DIExpression(), !44802)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44798, !DIExpression(), !44803)
  store ptr %typeassert.value.ptr.i.i.i, ptr %35, align 8, !dbg !44804
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44799, !DIExpression(), !44804)
    #dbg_value(ptr %35, !44793, !DIExpression(), !44805)
    #dbg_value(ptr %35, !37156, !DIExpression(), !44806)
    #dbg_value(ptr %35, !37156, !DIExpression(), !44808)
  %36 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 72, !dbg !44809
    #dbg_value(%fmt.fmtFlags zeroinitializer, !37161, !DIExpression(), !44809)
    #dbg_value(ptr %35, !37156, !DIExpression(), !44810)
  %37 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 88, !dbg !44811
    #dbg_value(i64 0, !37162, !DIExpression(), !44811)
    #dbg_value(ptr %35, !37156, !DIExpression(), !44812)
    #dbg_value(i64 0, !37163, !DIExpression(), !44813)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %36, i8 0, i64 9, i1 false), !dbg !44809
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false), !dbg !44811
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44686, !DIExpression(), !44814)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44669, !DIExpression(), !44815)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44669, !DIExpression(), !44816)
    #dbg_value({ ptr, i64, i64 } poison, !44668, !DIExpression(), !44817)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44818, !DIExpression(), !44828)
    #dbg_value(ptr %stackalloc, !44823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !44828)
    #dbg_value(i64 4, !44823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !44828)
    #dbg_value(i64 4, !44823, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !44828)
    #dbg_value(i1 false, !44824, !DIExpression(), !44830)
    #dbg_value({ ptr, i64, i64 } poison, !44823, !DIExpression(), !44831)
  %.elt1.i.i.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 8
  %.elt3.i.i.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 16
  br label %rangeindex.body.i.i.i, !dbg !44832

rangeindex.body.i.i.i:                            ; preds = %if.done.i.i.i, %fmt.newPrinter.exit.i.i
  %38 = phi i64 [ 0, %fmt.newPrinter.exit.i.i ], [ %56, %if.done.i.i.i ]
  %39 = phi i64 [ -1, %fmt.newPrinter.exit.i.i ], [ %38, %if.done.i.i.i ]
  %40 = phi i1 [ false, %fmt.newPrinter.exit.i.i ], [ %47, %if.done.i.i.i ]
  %41 = getelementptr inbounds nuw { ptr, ptr }, ptr %stackalloc, i64 %38, !dbg !44831
  %.unpack.i.i.i = load ptr, ptr %41, align 8, !dbg !44832
  %.elt1.i.i.i = getelementptr inbounds nuw i8, ptr %41, i64 8, !dbg !44832
  %.unpack2.i.i.i = load ptr, ptr %.elt1.i.i.i, align 8, !dbg !44832
    #dbg_value(i64 %38, !44825, !DIExpression(), !44833)
    #dbg_value({ ptr, ptr } poison, !44826, !DIExpression(), !44834)
    #dbg_value({ ptr, ptr } poison, !44826, !DIExpression(), !44835)
  %.not3.i.i.i = icmp ne ptr %.unpack.i.i.i, null, !dbg !44836
    #dbg_value({ ptr, ptr } poison, !44826, !DIExpression(), !44837)
    #dbg_value(ptr %.unpack.i.i.i, !11477, !DIExpression(), !44838)
    #dbg_value(ptr %.unpack.i.i.i, !11477, !DIExpression(), !44840)
    #dbg_value(ptr %.unpack.i.i.i, !11477, !DIExpression(), !44841)
  %42 = ptrtoint ptr %.unpack.i.i.i to i64
  %43 = and i64 %42, 3
    #dbg_value(i64 %43, !11481, !DIExpression(), !44842)
    #dbg_value(i64 %43, !11481, !DIExpression(), !44843)
  %.not.i.i.i.i.i.i = icmp eq i64 %43, 0
  %or.cond.i.i.i = and i1 %.not3.i.i.i, %.not.i.i.i.i.i.i, !dbg !44832
  br i1 %or.cond.i.i.i, label %deref.next.i.i.i.i.i.i, label %binop.done.i.i.i, !dbg !44832

deref.next.i.i.i.i.i.i:                           ; preds = %rangeindex.body.i.i.i
    #dbg_value(ptr %.unpack.i.i.i, !11477, !DIExpression(), !44844)
  %44 = load i8, ptr %.unpack.i.i.i, align 1, !dbg !44845
  %45 = and i8 %44, 31, !dbg !44846
  %46 = icmp eq i8 %45, 17, !dbg !44847
  br label %binop.done.i.i.i, !dbg !44848

binop.done.i.i.i:                                 ; preds = %deref.next.i.i.i.i.i.i, %rangeindex.body.i.i.i
  %47 = phi i1 [ false, %rangeindex.body.i.i.i ], [ %46, %deref.next.i.i.i.i.i.i ], !dbg !44849
    #dbg_value(i1 %47, !44827, !DIExpression(), !44850)
    #dbg_value(i64 %38, !44825, !DIExpression(), !44851)
  %48 = icmp ugt i64 %39, 9223372036854775806, !dbg !44852
  %49 = or i1 %40, %47, !dbg !44832
  %brmerge5.i.i.i = select i1 %48, i1 true, i1 %49, !dbg !44832
  br i1 %brmerge5.i.i.i, label %if.done.i.i.i, label %gep.next.i.i.i, !dbg !44832

gep.next.i.i.i:                                   ; preds = %binop.done.i.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44818, !DIExpression(), !44853)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !35401, !DIExpression(), !44854)
    #dbg_value(i8 32, !35402, !DIExpression(), !44854)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !35401, !DIExpression(), !44856)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !35401, !DIExpression(), !44857)
    #dbg_value(ptr undef, !11108, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !44858)
    #dbg_value(ptr undef, !11121, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !44861)
  %.unpack.i.i6.i.i = load ptr, ptr %typeassert.value.ptr.i.i.i, align 8, !dbg !44862
  %.unpack2.i.i.i.i = load i64, ptr %.elt1.i.i.i.i, align 8, !dbg !44862
  %.unpack4.i.i.i.i = load i64, ptr %.elt3.i.i.i.i, align 8, !dbg !44862
    #dbg_value(i8 32, !35402, !DIExpression(), !44863)
    #dbg_value(ptr %.unpack.i.i6.i.i, !11120, !DIExpression(), !44861)
    #dbg_value(ptr undef, !11121, !DIExpression(), !44861)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11122, !DIExpression(), !44861)
    #dbg_value(i64 %.unpack4.i.i.i.i, !11123, !DIExpression(), !44861)
    #dbg_value(i64 1, !11124, !DIExpression(), !44861)
    #dbg_value(i64 1, !11125, !DIExpression(), !44861)
    #dbg_value(ptr inttoptr (i64 3 to ptr), !11126, !DIExpression(), !44861)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11122, !DIExpression(), !44864)
    #dbg_value(i64 1, !11124, !DIExpression(), !44865)
  %50 = add i64 %.unpack2.i.i.i.i, 1, !dbg !44866
    #dbg_value(i64 %50, !11127, !DIExpression(), !44867)
    #dbg_value(i64 1, !11124, !DIExpression(), !44868)
    #dbg_value(ptr %.unpack.i.i6.i.i, !11120, !DIExpression(), !44869)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11122, !DIExpression(), !44870)
    #dbg_value(i64 %.unpack4.i.i.i.i, !11123, !DIExpression(), !44871)
    #dbg_value(i64 %50, !11127, !DIExpression(), !44872)
    #dbg_value(i64 1, !11125, !DIExpression(), !44873)
    #dbg_value(ptr inttoptr (i64 3 to ptr), !11126, !DIExpression(), !44874)
    #dbg_value(ptr %.unpack.i.i6.i.i, !11146, !DIExpression(), !44875)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11151, !DIExpression(), !44875)
    #dbg_value(i64 %.unpack4.i.i.i.i, !11152, !DIExpression(), !44875)
    #dbg_value(i64 %50, !11153, !DIExpression(), !44875)
    #dbg_value(i64 1, !11154, !DIExpression(), !44875)
    #dbg_value(ptr inttoptr (i64 3 to ptr), !11155, !DIExpression(), !44875)
    #dbg_value(i64 %.unpack4.i.i.i.i, !11152, !DIExpression(), !44877)
    #dbg_value(i64 %50, !11153, !DIExpression(), !44878)
  %.not.i.i.i6.i.i.i = icmp ult i64 %.unpack4.i.i.i.i, %50, !dbg !44879
  br i1 %.not.i.i.i6.i.i.i, label %shift.next.i.i.i.i.i.i, label %"(*fmt.buffer).writeByte.exit.i.i.i", !dbg !44880

shift.next.i.i.i.i.i.i:                           ; preds = %gep.next.i.i.i
    #dbg_value(i64 %50, !11153, !DIExpression(), !44881)
    #dbg_value(i64 %50, !11164, !DIExpression(), !44882)
  %51 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %50, i1 true), !dbg !44882
  %52 = sub nuw nsw i64 64, %51, !dbg !44882
  %shift.overflow.i.i.i.i.i.i = icmp eq i64 %51, 0, !dbg !44884
  %53 = shl nuw i64 1, %52, !dbg !44884
  %shift.result.i.i.i.i.i.i = select i1 %shift.overflow.i.i.i.i.i.i, i64 0, i64 %53, !dbg !44884
    #dbg_value(i64 %shift.result.i.i.i.i.i.i, !11153, !DIExpression(), !44885)
    #dbg_value(i64 %shift.result.i.i.i.i.i.i, !11153, !DIExpression(), !44886)
    #dbg_value(i64 1, !11154, !DIExpression(), !44887)
    #dbg_value(ptr inttoptr (i64 3 to ptr), !11155, !DIExpression(), !44888)
  %54 = call fastcc ptr @runtime.alloc(i64 %shift.result.i.i.i.i.i.i, ptr nonnull inttoptr (i64 3 to ptr)), !dbg !44889
    #dbg_value(ptr %54, !11156, !DIExpression(), !44890)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11151, !DIExpression(), !44891)
  %.not1.i.i.i.i.i.i = icmp eq i64 %.unpack2.i.i.i.i, 0, !dbg !44892
  br i1 %.not1.i.i.i.i.i.i, label %"(*fmt.buffer).writeByte.exit.i.i.i", label %if.then1.i.i.i.i.i.i, !dbg !44880

if.then1.i.i.i.i.i.i:                             ; preds = %shift.next.i.i.i.i.i.i
    #dbg_value(ptr %54, !11156, !DIExpression(), !44893)
    #dbg_value(ptr %.unpack.i.i6.i.i, !11146, !DIExpression(), !44894)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11151, !DIExpression(), !44895)
    #dbg_value(i64 1, !11154, !DIExpression(), !44896)
    #dbg_value(ptr %54, !11111, !DIExpression(), !44897)
    #dbg_value(ptr %.unpack.i.i6.i.i, !11108, !DIExpression(), !44897)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11112, !DIExpression(), !44897)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %54, ptr readonly align 1 %.unpack.i.i6.i.i, i64 %.unpack2.i.i.i.i, i1 false), !dbg !44897
  br label %"(*fmt.buffer).writeByte.exit.i.i.i", !dbg !44880

"(*fmt.buffer).writeByte.exit.i.i.i":             ; preds = %if.then1.i.i.i.i.i.i, %shift.next.i.i.i.i.i.i, %gep.next.i.i.i
  %oldBuf.pn.i.i.i.i.i.i = phi ptr [ %.unpack.i.i6.i.i, %gep.next.i.i.i ], [ %54, %if.then1.i.i.i.i.i.i ], [ %54, %shift.next.i.i.i.i.i.i ]
  %oldCap.pn.i.i.i.i.i.i = phi i64 [ %.unpack4.i.i.i.i, %gep.next.i.i.i ], [ %shift.result.i.i.i.i.i.i, %if.then1.i.i.i.i.i.i ], [ %shift.result.i.i.i.i.i.i, %shift.next.i.i.i.i.i.i ]
    #dbg_value(ptr %oldBuf.pn.i.i.i.i.i.i, !11120, !DIExpression(), !44899)
    #dbg_value(i64 %oldCap.pn.i.i.i.i.i.i, !11123, !DIExpression(), !44900)
    #dbg_value(ptr %oldBuf.pn.i.i.i.i.i.i, !11120, !DIExpression(), !44901)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11122, !DIExpression(), !44902)
    #dbg_value(i64 1, !11125, !DIExpression(), !44903)
  %55 = getelementptr i8, ptr %oldBuf.pn.i.i.i.i.i.i, i64 %.unpack2.i.i.i.i, !dbg !44904
    #dbg_value(ptr undef, !11121, !DIExpression(), !44905)
    #dbg_value(i64 1, !11124, !DIExpression(), !44906)
    #dbg_value(i64 1, !11125, !DIExpression(), !44907)
    #dbg_value(ptr %55, !11111, !DIExpression(), !44858)
    #dbg_value(ptr undef, !11108, !DIExpression(), !44858)
    #dbg_value(i64 1, !11112, !DIExpression(), !44858)
  store i8 32, ptr %55, align 1, !dbg !44858
    #dbg_value(ptr %oldBuf.pn.i.i.i.i.i.i, !11120, !DIExpression(), !44908)
    #dbg_value(i64 %50, !11127, !DIExpression(), !44909)
    #dbg_value(i64 %oldCap.pn.i.i.i.i.i.i, !11123, !DIExpression(), !44910)
  store ptr %oldBuf.pn.i.i.i.i.i.i, ptr %typeassert.value.ptr.i.i.i, align 8, !dbg !44911
  store i64 %50, ptr %.elt1.i.i.i.i, align 8, !dbg !44911
  store i64 %oldCap.pn.i.i.i.i.i.i, ptr %.elt3.i.i.i.i, align 8, !dbg !44911
  br label %if.done.i.i.i, !dbg !44832

if.done.i.i.i:                                    ; preds = %"(*fmt.buffer).writeByte.exit.i.i.i", %binop.done.i.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44818, !DIExpression(), !44912)
    #dbg_value({ ptr, ptr } poison, !44826, !DIExpression(), !44913)
  call fastcc void @"(*fmt.pp).printArg"(ptr nonnull dereferenceable_or_null(208) %typeassert.value.ptr.i.i.i, ptr %.unpack.i.i.i, ptr %.unpack2.i.i.i), !dbg !44914
    #dbg_value(i1 %47, !44827, !DIExpression(), !44915)
    #dbg_value(i1 %47, !44824, !DIExpression(), !44916)
  %56 = add nuw nsw i64 %38, 1, !dbg !44832
  %.not8.i.i.i = icmp eq i64 %38, 3, !dbg !44832
  br i1 %.not8.i.i.i, label %"(*fmt.pp).doPrint.exit.i.i", label %rangeindex.body.i.i.i, !dbg !44832

"(*fmt.pp).doPrint.exit.i.i":                     ; preds = %if.done.i.i.i
    #dbg_value({ ptr, ptr } poison, !44663, !DIExpression(), !44917)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44669, !DIExpression(), !44918)
  %.unpack.i.i = load ptr, ptr %typeassert.value.ptr.i.i.i, align 8, !dbg !44919
  %.unpack3.i.i = load i64, ptr %.elt1.i.i.i.i, align 8, !dbg !44919
  %.unpack5.i.i = load i64, ptr %.elt3.i.i.i.i, align 8, !dbg !44919
  %57 = call fastcc { i64, { ptr, ptr } } @"(*os.File).Write"(ptr nonnull @"os$alloc.173", ptr %.unpack.i.i, i64 %.unpack3.i.i), !dbg !44920
    #dbg_value(i64 poison, !44670, !DIExpression(), !44921)
    #dbg_value({ ptr, ptr } poison, !44671, !DIExpression(), !44922)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44669, !DIExpression(), !44923)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44924, !DIExpression(), !44933)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44924, !DIExpression(), !44935)
  %.unpack15.i.i.i = load i64, ptr %.elt3.i.i.i.i, align 8, !dbg !44936
  %58 = icmp sgt i64 %.unpack15.i.i.i, 65536, !dbg !44937
  br i1 %58, label %store.next.i.i.i, label %slice.next39.i.i.i, !dbg !44938

store.next.i.i.i:                                 ; preds = %"(*fmt.pp).doPrint.exit.i.i"
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44924, !DIExpression(), !44939)
    #dbg_value({ ptr, i64, i64 } zeroinitializer, !44929, !DIExpression(), !44940)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %typeassert.value.ptr.i.i.i, i8 0, i64 16, i1 false), !dbg !44940
  br label %deref.next8.i.i.i, !dbg !44938

deref.next8.i.i.i:                                ; preds = %slice.next39.i.i.i, %store.next.i.i.i
  %storemerge.i.i.i = phi i64 [ %.unpack15.i.i.i, %slice.next39.i.i.i ], [ 0, %store.next.i.i.i ], !dbg !44938
  store i64 %storemerge.i.i.i, ptr %.elt3.i.i.i.i, align 8, !dbg !44938
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44924, !DIExpression(), !44941)
  %.elt29.i.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 200, !dbg !44942
  %.unpack30.i.i.i = load i64, ptr %.elt29.i.i.i, align 8, !dbg !44942
  %59 = icmp sgt i64 %.unpack30.i.i.i, 8, !dbg !44943
  br i1 %59, label %store.next13.i.i.i, label %store.next17.i.i.i, !dbg !44938

store.next13.i.i.i:                               ; preds = %deref.next8.i.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44924, !DIExpression(), !44944)
  %60 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 184, !dbg !44945
    #dbg_value({ ptr, i64, i64 } zeroinitializer, !44930, !DIExpression(), !44945)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false), !dbg !44945
  br label %store.next17.i.i.i, !dbg !44938

store.next17.i.i.i:                               ; preds = %store.next13.i.i.i, %deref.next8.i.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44924, !DIExpression(), !44946)
  %61 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 24, !dbg !44947
    #dbg_value({ ptr, ptr } zeroinitializer, !44931, !DIExpression(), !44947)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44924, !DIExpression(), !44948)
    #dbg_value(%reflect.Value zeroinitializer, !44932, !DIExpression(), !44949)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44924, !DIExpression(), !44950)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44924, !DIExpression(), !44951)
  %.repack39.i.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 192, !dbg !44952
  store i64 0, ptr %.repack39.i.i.i, align 8, !dbg !44952
    #dbg_value({ ptr, i64, i64 } poison, !44930, !DIExpression(), !44952)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44924, !DIExpression(), !44953)
    #dbg_value(ptr @fmt.ppFree, !44954, !DIExpression(), !44961)
    #dbg_value(ptr @"reflect/types.type:pointer:named:fmt.pp", !44959, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !44961)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44959, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !44961)
    #dbg_value(ptr @fmt.ppFree, !44954, !DIExpression(), !44963)
    #dbg_value(ptr undef, !11108, !DIExpression(), !44964)
    #dbg_value(ptr undef, !11121, !DIExpression(), !44967)
    #dbg_value(ptr @fmt.ppFree, !17017, !DIExpression(), !44968)
    #dbg_value(ptr @fmt.ppFree, !17017, !DIExpression(), !44970)
    #dbg_value(ptr @fmt.ppFree, !17024, !DIExpression(), !44971)
    #dbg_value(i32 0, !17029, !DIExpression(), !44971)
    #dbg_value(i32 1, !17030, !DIExpression(), !44971)
    #dbg_value(ptr @fmt.ppFree, !17024, !DIExpression(), !44973)
    #dbg_value(i32 0, !17029, !DIExpression(), !44974)
    #dbg_value(i32 1, !17030, !DIExpression(), !44975)
    #dbg_value(ptr @fmt.ppFree, !17036, !DIExpression(), !44976)
    #dbg_value(i32 0, !17041, !DIExpression(), !44976)
    #dbg_value(i32 1, !17042, !DIExpression(), !44976)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %61, i8 0, i64 40, i1 false), !dbg !44947
  %62 = cmpxchg ptr @fmt.ppFree, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !44976
  %63 = extractvalue { i32, i1 } %62, 1, !dbg !44976
  br i1 %63, label %"(*internal/task.Mutex).Lock.exit.i.i11.i.i", label %for.loop.preheader.i.i.i7.i.i, !dbg !44978

for.loop.preheader.i.i.i7.i.i:                    ; preds = %store.next17.i.i.i
    #dbg_value(ptr @fmt.ppFree, !17017, !DIExpression(), !44979)
    #dbg_value(ptr @fmt.ppFree, !16969, !DIExpression(), !44980)
    #dbg_value(i32 2, !16976, !DIExpression(), !44980)
    #dbg_value(ptr @fmt.ppFree, !16969, !DIExpression(), !44982)
    #dbg_value(i32 2, !16976, !DIExpression(), !44983)
    #dbg_value(ptr @fmt.ppFree, !16981, !DIExpression(), !44984)
    #dbg_value(i32 2, !16987, !DIExpression(), !44984)
  %64 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !44984
  %.not4.i.i.i8.i.i = icmp eq i32 %64, 0, !dbg !44986
  br i1 %.not4.i.i.i8.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i11.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i9.i.i", !dbg !44978

"(*internal/futex.Futex).Wait.exit.i.i.i9.i.i":   ; preds = %for.loop.preheader.i.i.i7.i.i, %"(*internal/futex.Futex).Wait.exit.i.i.i9.i.i"
    #dbg_value(ptr @fmt.ppFree, !17017, !DIExpression(), !44987)
    #dbg_value(ptr @fmt.ppFree, !17055, !DIExpression(), !44988)
    #dbg_value(i32 2, !17060, !DIExpression(), !44990)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree, i32 2) #27, !dbg !44991
    #dbg_value(ptr @fmt.ppFree, !16969, !DIExpression(), !44982)
    #dbg_value(i32 2, !16976, !DIExpression(), !44983)
    #dbg_value(ptr @fmt.ppFree, !16981, !DIExpression(), !44984)
    #dbg_value(i32 2, !16987, !DIExpression(), !44984)
  %65 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !44984
  %.not.i.i.i10.i.i = icmp eq i32 %65, 0, !dbg !44986
  br i1 %.not.i.i.i10.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i11.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i9.i.i", !dbg !44978

"(*internal/task.Mutex).Lock.exit.i.i11.i.i":     ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i9.i.i", %for.loop.preheader.i.i.i7.i.i, %store.next17.i.i.i
    #dbg_value(ptr @fmt.ppFree, !44954, !DIExpression(), !44992)
    #dbg_value(ptr @fmt.ppFree, !44954, !DIExpression(), !44993)
  %.unpack.i.i12.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !44994
  %.unpack2.i.i13.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !44994
  %.unpack3.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !44994
    #dbg_value({ ptr, ptr } poison, !44959, !DIExpression(), !44995)
    #dbg_value(ptr %.unpack.i.i12.i.i, !11120, !DIExpression(), !44967)
    #dbg_value(ptr undef, !11121, !DIExpression(), !44967)
    #dbg_value(i64 %.unpack2.i.i13.i.i, !11122, !DIExpression(), !44967)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11123, !DIExpression(), !44967)
    #dbg_value(i64 1, !11124, !DIExpression(), !44967)
    #dbg_value(i64 16, !11125, !DIExpression(), !44967)
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11126, !DIExpression(), !44967)
    #dbg_value(i64 %.unpack2.i.i13.i.i, !11122, !DIExpression(), !44996)
    #dbg_value(i64 1, !11124, !DIExpression(), !44997)
  %66 = add i64 %.unpack2.i.i13.i.i, 1, !dbg !44998
    #dbg_value(i64 %66, !11127, !DIExpression(), !44999)
    #dbg_value(i64 1, !11124, !DIExpression(), !45000)
    #dbg_value(ptr %.unpack.i.i12.i.i, !11120, !DIExpression(), !45001)
    #dbg_value(i64 %.unpack2.i.i13.i.i, !11122, !DIExpression(), !45002)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11123, !DIExpression(), !45003)
    #dbg_value(i64 %66, !11127, !DIExpression(), !45004)
    #dbg_value(i64 16, !11125, !DIExpression(), !45005)
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11126, !DIExpression(), !45006)
    #dbg_value(ptr %.unpack.i.i12.i.i, !11146, !DIExpression(), !45007)
    #dbg_value(i64 %.unpack2.i.i13.i.i, !11151, !DIExpression(), !45007)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11152, !DIExpression(), !45007)
    #dbg_value(i64 %66, !11153, !DIExpression(), !45007)
    #dbg_value(i64 16, !11154, !DIExpression(), !45007)
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11155, !DIExpression(), !45007)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11152, !DIExpression(), !45009)
    #dbg_value(i64 %66, !11153, !DIExpression(), !45010)
  %.not.i.i.i.i14.i.i = icmp ult i64 %.unpack3.i.i.i.i, %66, !dbg !45011
  br i1 %.not.i.i.i.i14.i.i, label %shift.next.i.i.i.i19.i.i, label %runtime.sliceAppend.exit.i.i.i.i, !dbg !45012

shift.next.i.i.i.i19.i.i:                         ; preds = %"(*internal/task.Mutex).Lock.exit.i.i11.i.i"
    #dbg_value(i64 %66, !11153, !DIExpression(), !45013)
    #dbg_value(i64 %66, !11164, !DIExpression(), !45014)
  %67 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %66, i1 true), !dbg !45014
  %68 = sub nuw nsw i64 64, %67, !dbg !45014
  %shift.overflow.i.i.i.i20.i.i = icmp eq i64 %67, 0, !dbg !45016
  %69 = shl nuw i64 1, %68, !dbg !45016
  %shift.result.i.i.i.i21.i.i = select i1 %shift.overflow.i.i.i.i20.i.i, i64 0, i64 %69, !dbg !45016
    #dbg_value(i64 %shift.result.i.i.i.i21.i.i, !11153, !DIExpression(), !45017)
    #dbg_value(i64 %shift.result.i.i.i.i21.i.i, !11153, !DIExpression(), !45018)
    #dbg_value(i64 16, !11154, !DIExpression(), !45019)
  %70 = shl i64 %shift.result.i.i.i.i21.i.i, 4, !dbg !45020
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11155, !DIExpression(), !45021)
  %71 = call fastcc ptr @runtime.alloc(i64 %70, ptr nonnull inttoptr (i64 389 to ptr)), !dbg !45022
    #dbg_value(ptr %71, !11156, !DIExpression(), !45023)
    #dbg_value(i64 %.unpack2.i.i13.i.i, !11151, !DIExpression(), !45024)
  %.not1.i.i.i.i22.i.i = icmp eq i64 %.unpack2.i.i13.i.i, 0, !dbg !45025
  br i1 %.not1.i.i.i.i22.i.i, label %runtime.sliceAppend.exit.i.i.i.i, label %if.then1.i.i.i.i23.i.i, !dbg !45012

if.then1.i.i.i.i23.i.i:                           ; preds = %shift.next.i.i.i.i19.i.i
    #dbg_value(ptr %71, !11156, !DIExpression(), !45026)
    #dbg_value(ptr %.unpack.i.i12.i.i, !11146, !DIExpression(), !45027)
    #dbg_value(i64 %.unpack2.i.i13.i.i, !11151, !DIExpression(), !45028)
    #dbg_value(i64 16, !11154, !DIExpression(), !45029)
  %72 = shl i64 %.unpack2.i.i13.i.i, 4, !dbg !45030
    #dbg_value(ptr %71, !11111, !DIExpression(), !45031)
    #dbg_value(ptr %.unpack.i.i12.i.i, !11108, !DIExpression(), !45031)
    #dbg_value(i64 %72, !11112, !DIExpression(), !45031)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %71, ptr readonly align 1 %.unpack.i.i12.i.i, i64 %72, i1 false), !dbg !45031
  br label %runtime.sliceAppend.exit.i.i.i.i, !dbg !45012

runtime.sliceAppend.exit.i.i.i.i:                 ; preds = %if.then1.i.i.i.i23.i.i, %shift.next.i.i.i.i19.i.i, %"(*internal/task.Mutex).Lock.exit.i.i11.i.i"
  %oldBuf.pn.i.i.i.i15.i.i = phi ptr [ %.unpack.i.i12.i.i, %"(*internal/task.Mutex).Lock.exit.i.i11.i.i" ], [ %71, %if.then1.i.i.i.i23.i.i ], [ %71, %shift.next.i.i.i.i19.i.i ]
  %oldCap.pn.i.i.i.i16.i.i = phi i64 [ %.unpack3.i.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i11.i.i" ], [ %shift.result.i.i.i.i21.i.i, %if.then1.i.i.i.i23.i.i ], [ %shift.result.i.i.i.i21.i.i, %shift.next.i.i.i.i19.i.i ]
    #dbg_value(ptr %oldBuf.pn.i.i.i.i15.i.i, !11120, !DIExpression(), !45033)
    #dbg_value(i64 %oldCap.pn.i.i.i.i16.i.i, !11123, !DIExpression(), !45034)
    #dbg_value(ptr %oldBuf.pn.i.i.i.i15.i.i, !11120, !DIExpression(), !45035)
    #dbg_value(i64 %.unpack2.i.i13.i.i, !11122, !DIExpression(), !45036)
    #dbg_value(i64 16, !11125, !DIExpression(), !45037)
  %73 = shl i64 %.unpack2.i.i13.i.i, 4, !dbg !45038
  %74 = getelementptr i8, ptr %oldBuf.pn.i.i.i.i15.i.i, i64 %73, !dbg !45039
    #dbg_value(ptr undef, !11121, !DIExpression(), !45040)
    #dbg_value(i64 1, !11124, !DIExpression(), !45041)
    #dbg_value(i64 16, !11125, !DIExpression(), !45042)
    #dbg_value(ptr %74, !11111, !DIExpression(), !44964)
    #dbg_value(ptr undef, !11108, !DIExpression(), !44964)
    #dbg_value(i64 16, !11112, !DIExpression(), !44964)
  store ptr @"reflect/types.type:pointer:named:fmt.pp", ptr %74, align 1, !dbg !44964
  %stackalloc.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %74, i64 8, !dbg !44964
  store ptr %typeassert.value.ptr.i.i.i, ptr %stackalloc.sroa.10.0..sroa_idx.i.i.i.i, align 1, !dbg !44964
    #dbg_value(ptr %oldBuf.pn.i.i.i.i15.i.i, !11120, !DIExpression(), !45043)
    #dbg_value(i64 %66, !11127, !DIExpression(), !45044)
    #dbg_value(i64 %oldCap.pn.i.i.i.i16.i.i, !11123, !DIExpression(), !45045)
  store ptr %oldBuf.pn.i.i.i.i15.i.i, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !45046
  store i64 %66, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !45046
  store i64 %oldCap.pn.i.i.i.i16.i.i, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !45046
    #dbg_value({ ptr, i64, i64 } poison, !44960, !DIExpression(), !45046)
    #dbg_value(ptr @fmt.ppFree, !44954, !DIExpression(), !45047)
    #dbg_value(ptr @fmt.ppFree, !16964, !DIExpression(), !45048)
    #dbg_value(ptr @fmt.ppFree, !16964, !DIExpression(), !45050)
    #dbg_value(ptr @fmt.ppFree, !16969, !DIExpression(), !45051)
    #dbg_value(i32 0, !16976, !DIExpression(), !45051)
    #dbg_value(ptr @fmt.ppFree, !16969, !DIExpression(), !45053)
    #dbg_value(i32 0, !16976, !DIExpression(), !45054)
    #dbg_value(ptr @fmt.ppFree, !16981, !DIExpression(), !45055)
    #dbg_value(i32 0, !16987, !DIExpression(), !45055)
  %75 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !45055
    #dbg_value(i32 %75, !16965, !DIExpression(), !45057)
    #dbg_value(i32 %75, !16965, !DIExpression(), !45058)
  switch i32 %75, label %common.ret [
    i32 0, label %if.then.i.i.i18.i.i
    i32 2, label %gep.next5.i.i.i17.i.i
  ], !dbg !45059

if.then.i.i.i18.i.i:                              ; preds = %runtime.sliceAppend.exit.i.i.i.i
  call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !45060
  unreachable, !dbg !45060

gep.next5.i.i.i17.i.i:                            ; preds = %runtime.sliceAppend.exit.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !16964, !DIExpression(), !45061)
    #dbg_value(ptr @fmt.ppFree, !16995, !DIExpression(), !45062)
    #dbg_value(ptr @fmt.ppFree, !16995, !DIExpression(), !45064)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !45065
  br label %common.ret, !dbg !45059

slice.next39.i.i.i:                               ; preds = %"(*fmt.pp).doPrint.exit.i.i"
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44924, !DIExpression(), !45066)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !44924, !DIExpression(), !45067)
  store i64 0, ptr %.elt1.i.i.i.i, align 8, !dbg !45068
    #dbg_value({ ptr, i64, i64 } poison, !44929, !DIExpression(), !45068)
  br label %deref.next8.i.i.i, !dbg !44938

lookup.next39:                                    ; preds = %lookup.next13
    #dbg_value({ ptr, i64, i64 } poison, !44582, !DIExpression(), !45069)
    #dbg_value(i64 poison, !44587, !DIExpression(), !45070)
    #dbg_value({ ptr, i64, i64 } poison, !44582, !DIExpression(), !45071)
    #dbg_value(i64 %.ph102, !44585, !DIExpression(), !45072)
    #dbg_value({ ptr, i64, i64 } poison, !44582, !DIExpression(), !45073)
    #dbg_value(i64 %10, !44586, !DIExpression(), !45074)
    #dbg_value(i64 %sum, !44584, !DIExpression(), !45075)
  %76 = icmp slt i64 %16, %sum, !dbg !45076
  br i1 %76, label %if.then3, label %if.else4, !dbg !44619

if.then3:                                         ; preds = %lookup.next39
  %77 = add nuw nsw i64 %.ph102, 1, !dbg !45077
    #dbg_value(i64 %77, !44585, !DIExpression(), !44625)
    #dbg_value(i64 %10, !44586, !DIExpression(), !44628)
  %78 = icmp slt i64 %77, %10, !dbg !44626
  br i1 %78, label %for.body2.lr.ph, label %for.loop.loopexit, !dbg !44619

if.else4:                                         ; preds = %lookup.next39
  %79 = add i64 %10, -1, !dbg !45078
    #dbg_value(i64 %.ph102, !44585, !DIExpression(), !44625)
    #dbg_value(i64 %79, !44586, !DIExpression(), !44628)
  %80 = icmp slt i64 %.ph102, %79, !dbg !44626
  br i1 %80, label %for.body2, label %for.loop.loopexit, !dbg !44619

lookup.throw:                                     ; preds = %for.body2.lr.ph.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !44627
  unreachable, !dbg !44627

lookup.throw8:                                    ; preds = %for.body2.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !44629
  unreachable, !dbg !44629

lookup.throw12:                                   ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !44636
  unreachable, !dbg !44636
}
