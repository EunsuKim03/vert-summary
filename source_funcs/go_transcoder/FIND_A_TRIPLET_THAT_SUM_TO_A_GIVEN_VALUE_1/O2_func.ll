define noundef i1 @f_gold(ptr nocapture %A.data, i64 %A.len, i64 %A.cap, i64 %arr_size, i64 %sum) local_unnamed_addr #0 !dbg !38501 {
entry:
    #dbg_value(ptr %A.data, !38503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38509)
    #dbg_value(i64 %A.len, !38503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38509)
    #dbg_value(i64 %A.cap, !38503, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38509)
    #dbg_value(i64 %arr_size, !38504, !DIExpression(), !38509)
    #dbg_value(i64 %sum, !38505, !DIExpression(), !38509)
    #dbg_value(i64 0, !38506, !DIExpression(), !38510)
    #dbg_value(i64 0, !38507, !DIExpression(), !38511)
    #dbg_value({ ptr, i64, i64 } poison, !38503, !DIExpression(), !38512)
  %stackalloc = alloca [64 x i8], align 8, !dbg !38513
    #dbg_value(ptr %A.data, !38514, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38519)
    #dbg_value(i64 %A.len, !38514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38519)
    #dbg_value(i64 %A.cap, !38514, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38519)
    #dbg_value({ ptr, i64, i64 } poison, !38514, !DIExpression(), !38521)
    #dbg_value(ptr %A.data, !38522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38526)
    #dbg_value(i64 %A.len, !38522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38526)
    #dbg_value(i64 %A.cap, !38522, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38526)
    #dbg_value({ ptr, i64, i64 } poison, !38522, !DIExpression(), !38528)
    #dbg_value(i64 %A.len, !38525, !DIExpression(), !38529)
    #dbg_value(i64 %A.len, !11143, !DIExpression(), !38530)
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %A.len, i1 false), !dbg !38530
  %1 = sub nuw nsw i64 64, %0, !dbg !38530
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %A.data, i64 %A.len, i64 0, i64 %A.len, i64 %1), !dbg !38532
    #dbg_value(i64 0, !38508, !DIExpression(), !38533)
  %2 = add i64 %arr_size, -2
  %3 = icmp sgt i64 %2, 0, !dbg !38534
  br i1 %3, label %for.body.lr.ph, label %common.ret, !dbg !38535

for.body.lr.ph:                                   ; preds = %entry
  %4 = add i64 %arr_size, -1
  br label %for.body, !dbg !38535

for.loop.loopexit:                                ; preds = %if.then3, %if.else4, %for.body
    #dbg_value(i64 %6, !38508, !DIExpression(), !38536)
    #dbg_value(i64 %arr_size, !38504, !DIExpression(), !38537)
  %exitcond117.not = icmp eq i64 %6, %2, !dbg !38534
  br i1 %exitcond117.not, label %common.ret, label %for.body, !dbg !38535

for.body:                                         ; preds = %for.body.lr.ph, %for.loop.loopexit
  %5 = phi i64 [ 0, %for.body.lr.ph ], [ %6, %for.loop.loopexit ]
    #dbg_value(i64 %5, !38508, !DIExpression(), !38538)
  %6 = add nuw nsw i64 %5, 1, !dbg !38539
    #dbg_value(i64 %arr_size, !38504, !DIExpression(), !38540)
    #dbg_value(i64 %4, !38507, !DIExpression(), !38541)
    #dbg_value(i64 %6, !38506, !DIExpression(), !38542)
  %7 = icmp slt i64 %6, %4, !dbg !38543
  br i1 %7, label %for.body2.lr.ph.lr.ph, label %for.loop.loopexit, !dbg !38535

for.body2.lr.ph.lr.ph:                            ; preds = %for.body
  %.not = icmp ult i64 %5, %A.len
  %8 = getelementptr inbounds nuw i64, ptr %A.data, i64 %5
  br i1 %.not, label %for.body2.lr.ph, label %lookup.throw, !dbg !38544

for.body2.lr.ph:                                  ; preds = %for.body2.lr.ph.lr.ph, %if.then3
  %.ph86103 = phi i64 [ %10, %if.then3 ], [ %4, %for.body2.lr.ph.lr.ph ]
  %.ph102 = phi i64 [ %77, %if.then3 ], [ %6, %for.body2.lr.ph.lr.ph ]
    #dbg_value(i64 %.ph86103, !38507, !DIExpression(), !38545)
    #dbg_value(i64 %.ph102, !38506, !DIExpression(), !38542)
  %9 = getelementptr inbounds nuw i64, ptr %A.data, i64 %.ph102
  %exitcond.not = icmp eq i64 %.ph102, %A.len
  br i1 %exitcond.not, label %lookup.throw8, label %for.body2, !dbg !38546

for.body2:                                        ; preds = %for.body2.lr.ph, %if.else4
  %10 = phi i64 [ %79, %if.else4 ], [ %.ph86103, %for.body2.lr.ph ]
    #dbg_value(i64 poison, !38508, !DIExpression(), !38547)
    #dbg_value(i64 %.ph102, !38506, !DIExpression(), !38548)
    #dbg_value({ ptr, i64, i64 } poison, !38503, !DIExpression(), !38549)
    #dbg_value(i64 %10, !38507, !DIExpression(), !38550)
  %.not4 = icmp ult i64 %10, %A.len, !dbg !38551
  br i1 %.not4, label %lookup.next13, label %lookup.throw12, !dbg !38551

lookup.next13:                                    ; preds = %for.body2
  %11 = load i64, ptr %8, align 8, !dbg !38544
  %12 = load i64, ptr %9, align 8, !dbg !38546
  %13 = add i64 %12, %11, !dbg !38552
  %14 = getelementptr inbounds i64, ptr %A.data, i64 %10, !dbg !38551
  %15 = load i64, ptr %14, align 8, !dbg !38551
  %16 = add i64 %13, %15, !dbg !38553
    #dbg_value(i64 %sum, !38505, !DIExpression(), !38554)
  %17 = icmp eq i64 %16, %sum, !dbg !38555
  br i1 %17, label %lookup.next25, label %lookup.next39, !dbg !38535

common.ret:                                       ; preds = %for.loop.loopexit, %entry, %gep.next5.i.i.i17.i.i, %runtime.sliceAppend.exit.i.i.i.i
  %18 = phi i1 [ true, %gep.next5.i.i.i17.i.i ], [ true, %runtime.sliceAppend.exit.i.i.i.i ], [ false, %entry ], [ false, %for.loop.loopexit ]
  ret i1 %18, !dbg !38535

lookup.next25:                                    ; preds = %lookup.next13
    #dbg_value(i64 poison, !38508, !DIExpression(), !38556)
    #dbg_value(i64 poison, !38506, !DIExpression(), !38557)
    #dbg_value({ ptr, i64, i64 } poison, !38503, !DIExpression(), !38558)
    #dbg_value(i64 undef, !38507, !DIExpression(), !38559)
  %stackalloc.repack27 = getelementptr inbounds nuw i8, ptr %stackalloc, i64 8, !dbg !38560
  %stackalloc.repack35 = getelementptr inbounds nuw i8, ptr %stackalloc, i64 16, !dbg !38560
  %stackalloc.repack43 = getelementptr inbounds nuw i8, ptr %stackalloc, i64 24, !dbg !38560
  %stackalloc.repack51 = getelementptr inbounds nuw i8, ptr %stackalloc, i64 32, !dbg !38560
  %stackalloc.repack59 = getelementptr inbounds nuw i8, ptr %stackalloc, i64 40, !dbg !38560
  %stackalloc.repack67 = getelementptr inbounds nuw i8, ptr %stackalloc, i64 48, !dbg !38560
  %stackalloc.repack75 = getelementptr inbounds nuw i8, ptr %stackalloc, i64 56, !dbg !38560
  store ptr @"reflect/types.type:basic:string", ptr %stackalloc, align 8, !dbg !38560
  store ptr @"main$pack", ptr %stackalloc.repack27, align 8, !dbg !38560
  %pack.int = inttoptr i64 %11 to ptr, !dbg !38561
  store ptr @"reflect/types.type:basic:int", ptr %stackalloc.repack35, align 8, !dbg !38561
  store ptr %pack.int, ptr %stackalloc.repack43, align 8, !dbg !38561
  %pack.int26 = inttoptr i64 %12 to ptr, !dbg !38562
  store ptr @"reflect/types.type:basic:int", ptr %stackalloc.repack51, align 8, !dbg !38562
  store ptr %pack.int26, ptr %stackalloc.repack59, align 8, !dbg !38562
  %pack.int27 = inttoptr i64 %15 to ptr, !dbg !38563
  store ptr @"reflect/types.type:basic:int", ptr %stackalloc.repack67, align 8, !dbg !38563
  store ptr %pack.int27, ptr %stackalloc.repack75, align 8, !dbg !38563
    #dbg_value(ptr %stackalloc, !38564, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38573)
    #dbg_value(i64 4, !38564, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38573)
    #dbg_value(i64 4, !38564, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38573)
    #dbg_value({ ptr, i64, i64 } poison, !38564, !DIExpression(), !38575)
    #dbg_value(ptr @"reflect/types.type:pointer:named:os.File", !38576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38585)
    #dbg_value(ptr @"os$alloc.173", !38576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38585)
    #dbg_value(ptr %stackalloc, !38581, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38585)
    #dbg_value(i64 4, !38581, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38585)
    #dbg_value(i64 4, !38581, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38585)
    #dbg_value(ptr @fmt.ppFree, !38587, !DIExpression(), !38595)
    #dbg_value(ptr @fmt.ppFree, !15654, !DIExpression(), !38604)
    #dbg_value(ptr @fmt.ppFree, !15660, !DIExpression(), !38606)
    #dbg_value(i32 0, !15665, !DIExpression(), !38608)
    #dbg_value(i32 1, !15666, !DIExpression(), !38609)
    #dbg_value(ptr @fmt.ppFree, !15671, !DIExpression(), !38610)
    #dbg_value(i32 0, !15676, !DIExpression(), !38610)
    #dbg_value(i32 1, !15677, !DIExpression(), !38610)
  %19 = cmpxchg ptr @fmt.ppFree, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !38610
  %20 = extractvalue { i32, i1 } %19, 1, !dbg !38610
  br i1 %20, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i.i.i", !dbg !38612

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i.i.i": ; preds = %lookup.next25
    #dbg_value(ptr @fmt.ppFree, !15654, !DIExpression(), !38613)
    #dbg_value(ptr @fmt.ppFree, !15609, !DIExpression(), !38614)
    #dbg_value(i32 2, !15616, !DIExpression(), !38616)
    #dbg_value(ptr @fmt.ppFree, !15620, !DIExpression(), !38617)
    #dbg_value(i32 2, !15626, !DIExpression(), !38617)
  %21 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !38617
  %.not4.i.i.i.i.i = icmp eq i32 %21, 0, !dbg !38619
  br i1 %.not4.i.i.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", !dbg !38612

"(*internal/futex.Futex).Wait.exit.i.i.i.i.i":    ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i.i.i", %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !15654, !DIExpression(), !38620)
    #dbg_value(ptr @fmt.ppFree, !15689, !DIExpression(), !38621)
    #dbg_value(i32 2, !15694, !DIExpression(), !38623)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree, i32 2) #27, !dbg !38624
    #dbg_value(ptr @fmt.ppFree, !15609, !DIExpression(), !38614)
    #dbg_value(i32 2, !15616, !DIExpression(), !38616)
    #dbg_value(ptr @fmt.ppFree, !15620, !DIExpression(), !38617)
    #dbg_value(i32 2, !15626, !DIExpression(), !38617)
  %22 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !38617
  %.not.i.i.i.i.i = icmp eq i32 %22, 0, !dbg !38619
  br i1 %.not.i.i.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", !dbg !38612

"(*internal/task.Mutex).Lock.exit.i.i.i.i":       ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i.i.i", %lookup.next25
    #dbg_value(ptr @fmt.ppFree, !38587, !DIExpression(), !38625)
  %.unpack12.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !38626
  %23 = icmp sgt i64 %.unpack12.i.i.i.i, 0, !dbg !38627
  br i1 %23, label %deref.next8.i.i.i.i, label %gep.next28.i.i.i.i, !dbg !38628

deref.next8.i.i.i.i:                              ; preds = %"(*internal/task.Mutex).Lock.exit.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !38587, !DIExpression(), !38629)
  %24 = add nsw i64 %.unpack12.i.i.i.i, -1, !dbg !38630
    #dbg_value({ ptr, ptr } poison, !38593, !DIExpression(), !38631)
  %.unpack27.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !38632
  %slice.highmax.i.i.i.i = icmp ugt i64 %24, %.unpack27.i.i.i.i, !dbg !38633
  br i1 %slice.highmax.i.i.i.i, label %slice.throw.i.i.i.i, label %store.next.i.i.i.i, !dbg !38633

store.next.i.i.i.i:                               ; preds = %deref.next8.i.i.i.i
  %.unpack16.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !38634
  %25 = getelementptr inbounds nuw { ptr, ptr }, ptr %.unpack16.i.i.i.i, i64 %24, !dbg !38635
  %.elt23.i.i.i.i = getelementptr inbounds nuw i8, ptr %25, i64 8, !dbg !38635
  %.unpack24.i.i.i.i = load ptr, ptr %.elt23.i.i.i.i, align 8, !dbg !38635
  %.unpack22.i.i.i.i = load ptr, ptr %25, align 8, !dbg !38635
  store i64 %24, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !38636
    #dbg_value({ ptr, i64, i64 } poison, !38594, !DIExpression(), !38636)
    #dbg_value(ptr @fmt.ppFree, !38587, !DIExpression(), !38637)
  %26 = insertvalue { ptr, ptr } poison, ptr %.unpack22.i.i.i.i, 0, !dbg !38635
  %27 = insertvalue { ptr, ptr } %26, ptr %.unpack24.i.i.i.i, 1, !dbg !38635
    #dbg_value({ ptr, ptr } %27, !38593, !DIExpression(), !38631)
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !38638)
    #dbg_value(ptr @fmt.ppFree, !15609, !DIExpression(), !38640)
    #dbg_value(i32 0, !15616, !DIExpression(), !38642)
    #dbg_value(ptr @fmt.ppFree, !15620, !DIExpression(), !38643)
    #dbg_value(i32 0, !15626, !DIExpression(), !38643)
  %28 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !38643
    #dbg_value(i32 %28, !15606, !DIExpression(), !38645)
  switch i32 %28, label %"(*sync.Pool).Get.exit.i.i.i" [
    i32 0, label %if.then.i.i.i.i.i
    i32 2, label %gep.next5.i.i.i.i.i
  ], !dbg !38646

if.then.i.i.i.i.i:                                ; preds = %store.next.i.i.i.i
  tail call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !38647
  unreachable, !dbg !38647

gep.next5.i.i.i.i.i:                              ; preds = %store.next.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !38648)
    #dbg_value(ptr @fmt.ppFree, !15633, !DIExpression(), !38649)
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !38651
  br label %"(*sync.Pool).Get.exit.i.i.i", !dbg !38646

gep.next28.i.i.i.i:                               ; preds = %"(*internal/task.Mutex).Lock.exit.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !38587, !DIExpression(), !38652)
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !38653)
    #dbg_value(ptr @fmt.ppFree, !15609, !DIExpression(), !38655)
    #dbg_value(i32 0, !15616, !DIExpression(), !38657)
    #dbg_value(ptr @fmt.ppFree, !15620, !DIExpression(), !38658)
    #dbg_value(i32 0, !15626, !DIExpression(), !38658)
  %29 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !38658
    #dbg_value(i32 %29, !15606, !DIExpression(), !38660)
  switch i32 %29, label %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i" [
    i32 0, label %if.then.i35.i.i.i.i
    i32 2, label %gep.next5.i34.i.i.i.i
  ], !dbg !38661

if.then.i35.i.i.i.i:                              ; preds = %gep.next28.i.i.i.i
  tail call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !38662
  unreachable, !dbg !38662

gep.next5.i34.i.i.i.i:                            ; preds = %gep.next28.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !38663)
    #dbg_value(ptr @fmt.ppFree, !15633, !DIExpression(), !38664)
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !38666
  br label %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i", !dbg !38661

"(*internal/task.Mutex).Unlock.exit36.i.i.i.i":   ; preds = %gep.next5.i34.i.i.i.i, %gep.next28.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !38587, !DIExpression(), !38667)
  %.unpack14.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 16), align 8, !dbg !38668
  %30 = icmp eq ptr %.unpack14.i.i.i.i, null, !dbg !38669
  br i1 %30, label %"(*sync.Pool).Get.exit.i.i.i", label %fpcall.next.i.i.i.i, !dbg !38628

fpcall.next.i.i.i.i:                              ; preds = %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !38587, !DIExpression(), !38670)
  %.unpack.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 8), align 8, !dbg !38671
  %31 = tail call { ptr, ptr } %.unpack14.i.i.i.i(ptr %.unpack.i.i.i.i) #27, !dbg !38672
  br label %"(*sync.Pool).Get.exit.i.i.i", !dbg !38673

slice.throw.i.i.i.i:                              ; preds = %deref.next8.i.i.i.i
  tail call fastcc void @runtime.slicePanic(), !dbg !38633
  unreachable, !dbg !38633

"(*sync.Pool).Get.exit.i.i.i":                    ; preds = %fpcall.next.i.i.i.i, %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i", %gep.next5.i.i.i.i.i, %store.next.i.i.i.i
  %common.ret.op.i.i.i.i = phi { ptr, ptr } [ %31, %fpcall.next.i.i.i.i ], [ zeroinitializer, %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i" ], [ %27, %store.next.i.i.i.i ], [ %27, %gep.next5.i.i.i.i.i ]
  %interface.type.i.i.i = extractvalue { ptr, ptr } %common.ret.op.i.i.i.i, 0, !dbg !38674
  %typeassert.ok3.i.i.i = icmp eq ptr %interface.type.i.i.i, @"reflect/types.type:pointer:named:fmt.pp", !dbg !38674
  %typeassert.value.ptr.i.i.i = extractvalue { ptr, ptr } %common.ret.op.i.i.i.i, 1
    #dbg_value(i1 %typeassert.ok3.i.i.i, !28663, !DIExpression(), !38675)
  br i1 %typeassert.ok3.i.i.i, label %runtime.interfaceTypeAssert.exit.i.i.i, label %if.then.i.i.i.i, !dbg !38677

if.then.i.i.i.i:                                  ; preds = %"(*sync.Pool).Get.exit.i.i.i"
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"runtime$string.11", i64 18), !dbg !38678
  unreachable, !dbg !38677

runtime.interfaceTypeAssert.exit.i.i.i:           ; preds = %"(*sync.Pool).Get.exit.i.i.i"
    #dbg_value(ptr poison, !38599, !DIExpression(), !38679)
  %.not.i.i.i = icmp eq ptr %typeassert.value.ptr.i.i.i, null, !dbg !38680
  br i1 %.not.i.i.i, label %gep.throw.i.i.i, label %fmt.newPrinter.exit.i.i, !dbg !38680

gep.throw.i.i.i:                                  ; preds = %runtime.interfaceTypeAssert.exit.i.i.i
  tail call fastcc void @runtime.nilPanic(), !dbg !38680
  unreachable, !dbg !38680

fmt.newPrinter.exit.i.i:                          ; preds = %runtime.interfaceTypeAssert.exit.i.i.i
  %32 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 178, !dbg !38680
  store i1 false, ptr %32, align 1, !dbg !38680
    #dbg_value(i1 false, !38600, !DIExpression(), !38680)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !38599, !DIExpression(), !38681)
  %33 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 179, !dbg !38682
  store i1 false, ptr %33, align 1, !dbg !38682
    #dbg_value(i1 false, !38601, !DIExpression(), !38682)
  %34 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 180, !dbg !38683
  store i1 false, ptr %34, align 1, !dbg !38683
    #dbg_value(i1 false, !38602, !DIExpression(), !38683)
  %35 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 64, !dbg !38684
    #dbg_value(ptr %35, !38685, !DIExpression(), !38692)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !38690, !DIExpression(), !38694)
  store ptr %typeassert.value.ptr.i.i.i, ptr %35, align 8, !dbg !38695
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !38691, !DIExpression(), !38695)
    #dbg_value(ptr %35, !31074, !DIExpression(), !38696)
  %36 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 72, !dbg !38698
    #dbg_value(%fmt.fmtFlags zeroinitializer, !31079, !DIExpression(), !38698)
  %37 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 88, !dbg !38699
    #dbg_value(i64 0, !31080, !DIExpression(), !38699)
    #dbg_value(i64 0, !31081, !DIExpression(), !38700)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %36, i8 0, i64 9, i1 false), !dbg !38698
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false), !dbg !38699
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !38582, !DIExpression(), !38701)
    #dbg_value({ ptr, i64, i64 } poison, !38581, !DIExpression(), !38702)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !38703, !DIExpression(), !38713)
    #dbg_value(ptr %stackalloc, !38708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38713)
    #dbg_value(i64 4, !38708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38713)
    #dbg_value(i64 4, !38708, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38713)
    #dbg_value(i1 false, !38709, !DIExpression(), !38715)
    #dbg_value({ ptr, i64, i64 } poison, !38708, !DIExpression(), !38716)
  %.elt1.i.i.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 8
  %.elt3.i.i.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 16
  br label %lookup.next.i.i.i, !dbg !38717

lookup.next.i.i.i:                                ; preds = %if.done.i.i.i, %fmt.newPrinter.exit.i.i
  %38 = phi i64 [ 0, %fmt.newPrinter.exit.i.i ], [ %56, %if.done.i.i.i ]
  %39 = phi i64 [ -1, %fmt.newPrinter.exit.i.i ], [ %38, %if.done.i.i.i ]
  %40 = phi i1 [ false, %fmt.newPrinter.exit.i.i ], [ %47, %if.done.i.i.i ]
  %41 = getelementptr inbounds nuw { ptr, ptr }, ptr %stackalloc, i64 %38, !dbg !38716
  %.unpack.i.i.i = load ptr, ptr %41, align 8, !dbg !38717
  %.elt1.i.i.i = getelementptr inbounds nuw i8, ptr %41, i64 8, !dbg !38717
  %.unpack2.i.i.i = load ptr, ptr %.elt1.i.i.i, align 8, !dbg !38717
    #dbg_value(i64 %38, !38710, !DIExpression(), !38718)
    #dbg_value({ ptr, ptr } poison, !38711, !DIExpression(), !38719)
  %.not3.i.i.i = icmp ne ptr %.unpack.i.i.i, null, !dbg !38720
    #dbg_value(ptr %.unpack.i.i.i, !11455, !DIExpression(), !38721)
  %42 = ptrtoint ptr %.unpack.i.i.i to i64
  %43 = and i64 %42, 3
    #dbg_value(i64 %43, !11459, !DIExpression(), !38723)
  %.not.i.i.i.i.i.i = icmp eq i64 %43, 0
  %or.cond.i.i.i = and i1 %.not3.i.i.i, %.not.i.i.i.i.i.i, !dbg !38717
  br i1 %or.cond.i.i.i, label %deref.next.i.i.i.i.i.i, label %binop.done.i.i.i, !dbg !38717

deref.next.i.i.i.i.i.i:                           ; preds = %lookup.next.i.i.i
    #dbg_value(ptr %.unpack.i.i.i, !11455, !DIExpression(), !38724)
  %44 = load i8, ptr %.unpack.i.i.i, align 1, !dbg !38725
  %45 = and i8 %44, 31, !dbg !38726
  %46 = icmp eq i8 %45, 17, !dbg !38727
  br label %binop.done.i.i.i, !dbg !38728

binop.done.i.i.i:                                 ; preds = %deref.next.i.i.i.i.i.i, %lookup.next.i.i.i
  %47 = phi i1 [ false, %lookup.next.i.i.i ], [ %46, %deref.next.i.i.i.i.i.i ], !dbg !38729
    #dbg_value(i1 %47, !38712, !DIExpression(), !38730)
    #dbg_value(i64 %38, !38710, !DIExpression(), !38731)
  %48 = icmp ugt i64 %39, 9223372036854775806, !dbg !38732
  %49 = or i1 %40, %47, !dbg !38717
  %brmerge5.i.i.i = select i1 %48, i1 true, i1 %49, !dbg !38717
  br i1 %brmerge5.i.i.i, label %if.done.i.i.i, label %gep.next.i.i.i, !dbg !38717

gep.next.i.i.i:                                   ; preds = %binop.done.i.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !38703, !DIExpression(), !38733)
    #dbg_value(i8 32, !30001, !DIExpression(), !38734)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !30000, !DIExpression(), !38736)
    #dbg_value(ptr undef, !11087, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !38737)
    #dbg_value(ptr undef, !11100, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !38740)
  %.unpack.i.i6.i.i = load ptr, ptr %typeassert.value.ptr.i.i.i, align 8, !dbg !38741
  %.unpack2.i.i.i.i = load i64, ptr %.elt1.i.i.i.i, align 8, !dbg !38741
  %.unpack4.i.i.i.i = load i64, ptr %.elt3.i.i.i.i, align 8, !dbg !38741
    #dbg_value(ptr %.unpack.i.i6.i.i, !11099, !DIExpression(), !38740)
    #dbg_value(ptr undef, !11100, !DIExpression(), !38740)
    #dbg_value(i64 %.unpack4.i.i.i.i, !11102, !DIExpression(), !38740)
    #dbg_value(i64 1, !11104, !DIExpression(), !38740)
    #dbg_value(ptr inttoptr (i64 3 to ptr), !11105, !DIExpression(), !38740)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11101, !DIExpression(), !38742)
    #dbg_value(i64 1, !11103, !DIExpression(), !38743)
  %50 = add i64 %.unpack2.i.i.i.i, 1, !dbg !38744
    #dbg_value(i64 %50, !11106, !DIExpression(), !38745)
    #dbg_value(ptr %.unpack.i.i6.i.i, !11125, !DIExpression(), !38746)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11130, !DIExpression(), !38746)
    #dbg_value(i64 1, !11133, !DIExpression(), !38746)
    #dbg_value(ptr inttoptr (i64 3 to ptr), !11134, !DIExpression(), !38746)
    #dbg_value(i64 %.unpack4.i.i.i.i, !11131, !DIExpression(), !38748)
    #dbg_value(i64 %50, !11132, !DIExpression(), !38749)
  %.not.i.i.i6.i.i.i = icmp ult i64 %.unpack4.i.i.i.i, %50, !dbg !38750
  br i1 %.not.i.i.i6.i.i.i, label %shift.next.i.i.i.i.i.i, label %"(*fmt.buffer).writeByte.exit.i.i.i", !dbg !38751

shift.next.i.i.i.i.i.i:                           ; preds = %gep.next.i.i.i
    #dbg_value(i64 %50, !11132, !DIExpression(), !38752)
    #dbg_value(i64 %50, !11143, !DIExpression(), !38753)
  %51 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %50, i1 true), !dbg !38753
  %52 = sub nuw nsw i64 64, %51, !dbg !38753
  %shift.overflow.i.i.i.i.i.i = icmp eq i64 %51, 0, !dbg !38755
  %53 = shl nuw i64 1, %52, !dbg !38755
  %shift.result.i.i.i.i.i.i = select i1 %shift.overflow.i.i.i.i.i.i, i64 0, i64 %53, !dbg !38755
    #dbg_value(i64 %shift.result.i.i.i.i.i.i, !11132, !DIExpression(), !38756)
    #dbg_value(i64 1, !11133, !DIExpression(), !38757)
    #dbg_value(ptr inttoptr (i64 3 to ptr), !11134, !DIExpression(), !38758)
  %54 = tail call fastcc ptr @runtime.alloc(i64 %shift.result.i.i.i.i.i.i, ptr nonnull inttoptr (i64 3 to ptr)), !dbg !38759
    #dbg_value(ptr %54, !11135, !DIExpression(), !38760)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11130, !DIExpression(), !38761)
  %.not1.i.i.i.i.i.i = icmp eq i64 %.unpack2.i.i.i.i, 0, !dbg !38762
  br i1 %.not1.i.i.i.i.i.i, label %"(*fmt.buffer).writeByte.exit.i.i.i", label %if.then1.i.i.i.i.i.i, !dbg !38751

if.then1.i.i.i.i.i.i:                             ; preds = %shift.next.i.i.i.i.i.i
    #dbg_value(ptr %54, !11135, !DIExpression(), !38763)
    #dbg_value(ptr %.unpack.i.i6.i.i, !11125, !DIExpression(), !38764)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11130, !DIExpression(), !38765)
    #dbg_value(i64 1, !11133, !DIExpression(), !38766)
    #dbg_value(ptr %54, !11090, !DIExpression(), !38767)
    #dbg_value(ptr %.unpack.i.i6.i.i, !11087, !DIExpression(), !38767)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11091, !DIExpression(), !38767)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %54, ptr readonly align 1 %.unpack.i.i6.i.i, i64 %.unpack2.i.i.i.i, i1 false), !dbg !38767
  br label %"(*fmt.buffer).writeByte.exit.i.i.i", !dbg !38751

"(*fmt.buffer).writeByte.exit.i.i.i":             ; preds = %if.then1.i.i.i.i.i.i, %shift.next.i.i.i.i.i.i, %gep.next.i.i.i
  %oldBuf.pn.i.i.i.i.i.i = phi ptr [ %.unpack.i.i6.i.i, %gep.next.i.i.i ], [ %54, %if.then1.i.i.i.i.i.i ], [ %54, %shift.next.i.i.i.i.i.i ]
  %oldCap.pn.i.i.i.i.i.i = phi i64 [ %.unpack4.i.i.i.i, %gep.next.i.i.i ], [ %shift.result.i.i.i.i.i.i, %if.then1.i.i.i.i.i.i ], [ %shift.result.i.i.i.i.i.i, %shift.next.i.i.i.i.i.i ]
    #dbg_value(i64 %oldCap.pn.i.i.i.i.i.i, !11102, !DIExpression(), !38769)
    #dbg_value(ptr %oldBuf.pn.i.i.i.i.i.i, !11099, !DIExpression(), !38770)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11101, !DIExpression(), !38771)
    #dbg_value(i64 1, !11104, !DIExpression(), !38772)
  %55 = getelementptr i8, ptr %oldBuf.pn.i.i.i.i.i.i, i64 %.unpack2.i.i.i.i, !dbg !38773
    #dbg_value(ptr undef, !11100, !DIExpression(), !38774)
    #dbg_value(i64 1, !11103, !DIExpression(), !38775)
    #dbg_value(ptr %55, !11090, !DIExpression(), !38737)
    #dbg_value(ptr undef, !11087, !DIExpression(), !38737)
    #dbg_value(i64 1, !11091, !DIExpression(), !38737)
  store i8 32, ptr %55, align 1, !dbg !38737
    #dbg_value(i64 %50, !11106, !DIExpression(), !38776)
  store ptr %oldBuf.pn.i.i.i.i.i.i, ptr %typeassert.value.ptr.i.i.i, align 8, !dbg !38777
  store i64 %50, ptr %.elt1.i.i.i.i, align 8, !dbg !38777
  store i64 %oldCap.pn.i.i.i.i.i.i, ptr %.elt3.i.i.i.i, align 8, !dbg !38777
  br label %if.done.i.i.i, !dbg !38717

if.done.i.i.i:                                    ; preds = %"(*fmt.buffer).writeByte.exit.i.i.i", %binop.done.i.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !38703, !DIExpression(), !38778)
    #dbg_value({ ptr, ptr } poison, !38711, !DIExpression(), !38779)
  tail call fastcc void @"(*fmt.pp).printArg"(ptr nonnull dereferenceable_or_null(208) %typeassert.value.ptr.i.i.i, ptr %.unpack.i.i.i, ptr %.unpack2.i.i.i), !dbg !38780
    #dbg_value(i1 %47, !38712, !DIExpression(), !38781)
    #dbg_value(i1 %47, !38709, !DIExpression(), !38782)
  %56 = add nuw nsw i64 %38, 1, !dbg !38717
  %exitcond.not.i.i.i = icmp eq i64 %56, 4, !dbg !38717
  br i1 %exitcond.not.i.i.i, label %"(*fmt.pp).doPrint.exit.i.i", label %lookup.next.i.i.i, !dbg !38717

"(*fmt.pp).doPrint.exit.i.i":                     ; preds = %if.done.i.i.i
    #dbg_value({ ptr, ptr } poison, !38576, !DIExpression(), !38783)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !38582, !DIExpression(), !38784)
  %.unpack.i.i = load ptr, ptr %typeassert.value.ptr.i.i.i, align 8, !dbg !38785
  %.unpack3.i.i = load i64, ptr %.elt1.i.i.i.i, align 8, !dbg !38785
  %.unpack5.i.i = load i64, ptr %.elt3.i.i.i.i, align 8, !dbg !38785
  %57 = tail call fastcc { i64, { ptr, ptr } } @"(*os.File).Write"(ptr nonnull @"os$alloc.173", ptr %.unpack.i.i, i64 %.unpack3.i.i), !dbg !38786
    #dbg_value(i64 poison, !38583, !DIExpression(), !38787)
    #dbg_value({ ptr, ptr } poison, !38584, !DIExpression(), !38788)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !38789, !DIExpression(), !38798)
  %.unpack15.i.i.i = load i64, ptr %.elt3.i.i.i.i, align 8, !dbg !38800
  %58 = icmp sgt i64 %.unpack15.i.i.i, 65536, !dbg !38801
  br i1 %58, label %store.next.i.i.i, label %deref.next8.i.i.i, !dbg !38802

store.next.i.i.i:                                 ; preds = %"(*fmt.pp).doPrint.exit.i.i"
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !38789, !DIExpression(), !38803)
  store ptr null, ptr %typeassert.value.ptr.i.i.i, align 8, !dbg !38804
    #dbg_value({ ptr, i64, i64 } zeroinitializer, !38794, !DIExpression(), !38804)
  br label %deref.next8.i.i.i, !dbg !38802

deref.next8.i.i.i:                                ; preds = %store.next.i.i.i, %"(*fmt.pp).doPrint.exit.i.i"
  %storemerge.i.i.i = phi i64 [ 0, %store.next.i.i.i ], [ %.unpack15.i.i.i, %"(*fmt.pp).doPrint.exit.i.i" ], !dbg !38802
  store i64 0, ptr %.elt1.i.i.i.i, align 8, !dbg !38802
  store i64 %storemerge.i.i.i, ptr %.elt3.i.i.i.i, align 8, !dbg !38802
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !38789, !DIExpression(), !38805)
  %.elt29.i.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 200, !dbg !38806
  %.unpack30.i.i.i = load i64, ptr %.elt29.i.i.i, align 8, !dbg !38806
  %59 = icmp sgt i64 %.unpack30.i.i.i, 8, !dbg !38807
  br i1 %59, label %store.next13.i.i.i, label %store.next17.i.i.i, !dbg !38802

store.next13.i.i.i:                               ; preds = %deref.next8.i.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !38789, !DIExpression(), !38808)
  %60 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 184, !dbg !38809
    #dbg_value({ ptr, i64, i64 } zeroinitializer, !38795, !DIExpression(), !38809)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false), !dbg !38809
  br label %store.next17.i.i.i, !dbg !38802

store.next17.i.i.i:                               ; preds = %store.next13.i.i.i, %deref.next8.i.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !38789, !DIExpression(), !38810)
  %61 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 24, !dbg !38811
    #dbg_value({ ptr, ptr } zeroinitializer, !38796, !DIExpression(), !38811)
    #dbg_value(%reflect.Value zeroinitializer, !38797, !DIExpression(), !38812)
  %.repack39.i.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 192, !dbg !38813
  store i64 0, ptr %.repack39.i.i.i, align 8, !dbg !38813
    #dbg_value({ ptr, i64, i64 } poison, !38795, !DIExpression(), !38813)
    #dbg_value(ptr @"reflect/types.type:pointer:named:fmt.pp", !38814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38821)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !38814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38821)
    #dbg_value(ptr @fmt.ppFree, !38819, !DIExpression(), !38823)
    #dbg_value(ptr undef, !11087, !DIExpression(), !38824)
    #dbg_value(ptr undef, !11100, !DIExpression(), !38827)
    #dbg_value(ptr @fmt.ppFree, !15654, !DIExpression(), !38828)
    #dbg_value(ptr @fmt.ppFree, !15660, !DIExpression(), !38830)
    #dbg_value(i32 0, !15665, !DIExpression(), !38832)
    #dbg_value(i32 1, !15666, !DIExpression(), !38833)
    #dbg_value(ptr @fmt.ppFree, !15671, !DIExpression(), !38834)
    #dbg_value(i32 0, !15676, !DIExpression(), !38834)
    #dbg_value(i32 1, !15677, !DIExpression(), !38834)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %61, i8 0, i64 40, i1 false), !dbg !38811
  %62 = cmpxchg ptr @fmt.ppFree, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !38834
  %63 = extractvalue { i32, i1 } %62, 1, !dbg !38834
  br i1 %63, label %"(*internal/task.Mutex).Lock.exit.i.i11.i.i", label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i7.i.i", !dbg !38836

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i7.i.i": ; preds = %store.next17.i.i.i
    #dbg_value(ptr @fmt.ppFree, !15654, !DIExpression(), !38837)
    #dbg_value(ptr @fmt.ppFree, !15609, !DIExpression(), !38838)
    #dbg_value(i32 2, !15616, !DIExpression(), !38840)
    #dbg_value(ptr @fmt.ppFree, !15620, !DIExpression(), !38841)
    #dbg_value(i32 2, !15626, !DIExpression(), !38841)
  %64 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !38841
  %.not4.i.i.i8.i.i = icmp eq i32 %64, 0, !dbg !38843
  br i1 %.not4.i.i.i8.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i11.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i9.i.i", !dbg !38836

"(*internal/futex.Futex).Wait.exit.i.i.i9.i.i":   ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i7.i.i", %"(*internal/futex.Futex).Wait.exit.i.i.i9.i.i"
    #dbg_value(ptr @fmt.ppFree, !15654, !DIExpression(), !38844)
    #dbg_value(ptr @fmt.ppFree, !15689, !DIExpression(), !38845)
    #dbg_value(i32 2, !15694, !DIExpression(), !38847)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree, i32 2) #27, !dbg !38848
    #dbg_value(ptr @fmt.ppFree, !15609, !DIExpression(), !38838)
    #dbg_value(i32 2, !15616, !DIExpression(), !38840)
    #dbg_value(ptr @fmt.ppFree, !15620, !DIExpression(), !38841)
    #dbg_value(i32 2, !15626, !DIExpression(), !38841)
  %65 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !38841
  %.not.i.i.i10.i.i = icmp eq i32 %65, 0, !dbg !38843
  br i1 %.not.i.i.i10.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i11.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i9.i.i", !dbg !38836

"(*internal/task.Mutex).Lock.exit.i.i11.i.i":     ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i9.i.i", %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i7.i.i", %store.next17.i.i.i
    #dbg_value(ptr @fmt.ppFree, !38819, !DIExpression(), !38849)
  %.unpack.i.i12.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !38850
  %.unpack2.i.i13.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !38850
  %.unpack3.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !38850
    #dbg_value({ ptr, ptr } poison, !38814, !DIExpression(), !38851)
    #dbg_value(ptr %.unpack.i.i12.i.i, !11099, !DIExpression(), !38827)
    #dbg_value(ptr undef, !11100, !DIExpression(), !38827)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11102, !DIExpression(), !38827)
    #dbg_value(i64 16, !11104, !DIExpression(), !38827)
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11105, !DIExpression(), !38827)
    #dbg_value(i64 %.unpack2.i.i13.i.i, !11101, !DIExpression(), !38852)
    #dbg_value(i64 1, !11103, !DIExpression(), !38853)
  %66 = add i64 %.unpack2.i.i13.i.i, 1, !dbg !38854
    #dbg_value(i64 %66, !11106, !DIExpression(), !38855)
    #dbg_value(ptr %.unpack.i.i12.i.i, !11125, !DIExpression(), !38856)
    #dbg_value(i64 %.unpack2.i.i13.i.i, !11130, !DIExpression(), !38856)
    #dbg_value(i64 16, !11133, !DIExpression(), !38856)
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11134, !DIExpression(), !38856)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11131, !DIExpression(), !38858)
    #dbg_value(i64 %66, !11132, !DIExpression(), !38859)
  %.not.i.i.i.i14.i.i = icmp ult i64 %.unpack3.i.i.i.i, %66, !dbg !38860
  br i1 %.not.i.i.i.i14.i.i, label %shift.next.i.i.i.i19.i.i, label %runtime.sliceAppend.exit.i.i.i.i, !dbg !38861

shift.next.i.i.i.i19.i.i:                         ; preds = %"(*internal/task.Mutex).Lock.exit.i.i11.i.i"
    #dbg_value(i64 %66, !11132, !DIExpression(), !38862)
    #dbg_value(i64 %66, !11143, !DIExpression(), !38863)
  %67 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %66, i1 true), !dbg !38863
  %68 = sub nuw nsw i64 64, %67, !dbg !38863
  %shift.overflow.i.i.i.i20.i.i = icmp eq i64 %67, 0, !dbg !38865
  %69 = shl nuw i64 1, %68, !dbg !38865
  %shift.result.i.i.i.i21.i.i = select i1 %shift.overflow.i.i.i.i20.i.i, i64 0, i64 %69, !dbg !38865
    #dbg_value(i64 %shift.result.i.i.i.i21.i.i, !11132, !DIExpression(), !38866)
    #dbg_value(i64 16, !11133, !DIExpression(), !38867)
  %70 = shl i64 %shift.result.i.i.i.i21.i.i, 4, !dbg !38868
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11134, !DIExpression(), !38869)
  %71 = tail call fastcc ptr @runtime.alloc(i64 %70, ptr nonnull inttoptr (i64 389 to ptr)), !dbg !38870
    #dbg_value(ptr %71, !11135, !DIExpression(), !38871)
    #dbg_value(i64 %.unpack2.i.i13.i.i, !11130, !DIExpression(), !38872)
  %.not1.i.i.i.i22.i.i = icmp eq i64 %.unpack2.i.i13.i.i, 0, !dbg !38873
  br i1 %.not1.i.i.i.i22.i.i, label %runtime.sliceAppend.exit.i.i.i.i, label %if.then1.i.i.i.i23.i.i, !dbg !38861

if.then1.i.i.i.i23.i.i:                           ; preds = %shift.next.i.i.i.i19.i.i
    #dbg_value(ptr %71, !11135, !DIExpression(), !38874)
    #dbg_value(ptr %.unpack.i.i12.i.i, !11125, !DIExpression(), !38875)
    #dbg_value(i64 %.unpack2.i.i13.i.i, !11130, !DIExpression(), !38876)
    #dbg_value(i64 16, !11133, !DIExpression(), !38877)
  %72 = shl i64 %.unpack2.i.i13.i.i, 4, !dbg !38878
    #dbg_value(ptr %71, !11090, !DIExpression(), !38879)
    #dbg_value(ptr %.unpack.i.i12.i.i, !11087, !DIExpression(), !38879)
    #dbg_value(i64 %72, !11091, !DIExpression(), !38879)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %71, ptr readonly align 1 %.unpack.i.i12.i.i, i64 %72, i1 false), !dbg !38879
  br label %runtime.sliceAppend.exit.i.i.i.i, !dbg !38861

runtime.sliceAppend.exit.i.i.i.i:                 ; preds = %if.then1.i.i.i.i23.i.i, %shift.next.i.i.i.i19.i.i, %"(*internal/task.Mutex).Lock.exit.i.i11.i.i"
  %oldBuf.pn.i.i.i.i15.i.i = phi ptr [ %.unpack.i.i12.i.i, %"(*internal/task.Mutex).Lock.exit.i.i11.i.i" ], [ %71, %if.then1.i.i.i.i23.i.i ], [ %71, %shift.next.i.i.i.i19.i.i ]
  %oldCap.pn.i.i.i.i16.i.i = phi i64 [ %.unpack3.i.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i11.i.i" ], [ %shift.result.i.i.i.i21.i.i, %if.then1.i.i.i.i23.i.i ], [ %shift.result.i.i.i.i21.i.i, %shift.next.i.i.i.i19.i.i ]
    #dbg_value(i64 %oldCap.pn.i.i.i.i16.i.i, !11102, !DIExpression(), !38881)
    #dbg_value(ptr %oldBuf.pn.i.i.i.i15.i.i, !11099, !DIExpression(), !38882)
    #dbg_value(i64 %.unpack2.i.i13.i.i, !11101, !DIExpression(), !38883)
    #dbg_value(i64 16, !11104, !DIExpression(), !38884)
  %73 = shl i64 %.unpack2.i.i13.i.i, 4, !dbg !38885
  %74 = getelementptr i8, ptr %oldBuf.pn.i.i.i.i15.i.i, i64 %73, !dbg !38886
    #dbg_value(ptr undef, !11100, !DIExpression(), !38887)
    #dbg_value(i64 1, !11103, !DIExpression(), !38888)
    #dbg_value(ptr %74, !11090, !DIExpression(), !38824)
    #dbg_value(ptr undef, !11087, !DIExpression(), !38824)
    #dbg_value(i64 16, !11091, !DIExpression(), !38824)
  store ptr @"reflect/types.type:pointer:named:fmt.pp", ptr %74, align 1, !dbg !38824
  %stackalloc.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %74, i64 8, !dbg !38824
  store ptr %typeassert.value.ptr.i.i.i, ptr %stackalloc.sroa.10.0..sroa_idx.i.i.i.i, align 1, !dbg !38824
    #dbg_value(i64 %66, !11106, !DIExpression(), !38889)
  store ptr %oldBuf.pn.i.i.i.i15.i.i, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !38890
  store i64 %66, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !38890
  store i64 %oldCap.pn.i.i.i.i16.i.i, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !38890
    #dbg_value({ ptr, i64, i64 } poison, !38820, !DIExpression(), !38890)
    #dbg_value(ptr @fmt.ppFree, !38819, !DIExpression(), !38891)
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !38892)
    #dbg_value(ptr @fmt.ppFree, !15609, !DIExpression(), !38894)
    #dbg_value(i32 0, !15616, !DIExpression(), !38896)
    #dbg_value(ptr @fmt.ppFree, !15620, !DIExpression(), !38897)
    #dbg_value(i32 0, !15626, !DIExpression(), !38897)
  %75 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !38897
    #dbg_value(i32 %75, !15606, !DIExpression(), !38899)
  switch i32 %75, label %common.ret [
    i32 0, label %if.then.i.i.i18.i.i
    i32 2, label %gep.next5.i.i.i17.i.i
  ], !dbg !38900

if.then.i.i.i18.i.i:                              ; preds = %runtime.sliceAppend.exit.i.i.i.i
  tail call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !38901
  unreachable, !dbg !38901

gep.next5.i.i.i17.i.i:                            ; preds = %runtime.sliceAppend.exit.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !38902)
    #dbg_value(ptr @fmt.ppFree, !15633, !DIExpression(), !38903)
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !38905
  br label %common.ret, !dbg !38900

lookup.next39:                                    ; preds = %lookup.next13
    #dbg_value(i64 poison, !38508, !DIExpression(), !38906)
    #dbg_value(i64 %.ph102, !38506, !DIExpression(), !38907)
    #dbg_value({ ptr, i64, i64 } poison, !38503, !DIExpression(), !38908)
    #dbg_value(i64 %10, !38507, !DIExpression(), !38909)
    #dbg_value(i64 %sum, !38505, !DIExpression(), !38910)
  %76 = icmp slt i64 %16, %sum, !dbg !38911
  br i1 %76, label %if.then3, label %if.else4, !dbg !38535

if.then3:                                         ; preds = %lookup.next39
  %77 = add nuw nsw i64 %.ph102, 1, !dbg !38912
    #dbg_value(i64 %77, !38506, !DIExpression(), !38542)
    #dbg_value(i64 %10, !38507, !DIExpression(), !38545)
  %78 = icmp slt i64 %77, %10, !dbg !38543
  br i1 %78, label %for.body2.lr.ph, label %for.loop.loopexit, !dbg !38535

if.else4:                                         ; preds = %lookup.next39
  %79 = add i64 %10, -1, !dbg !38913
    #dbg_value(i64 %.ph102, !38506, !DIExpression(), !38542)
    #dbg_value(i64 %79, !38507, !DIExpression(), !38545)
  %80 = icmp slt i64 %.ph102, %79, !dbg !38543
  br i1 %80, label %for.body2, label %for.loop.loopexit, !dbg !38535

lookup.throw:                                     ; preds = %for.body2.lr.ph.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !38544
  unreachable, !dbg !38544

lookup.throw8:                                    ; preds = %for.body2.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !38546
  unreachable, !dbg !38546

lookup.throw12:                                   ; preds = %for.body2
  tail call fastcc void @runtime.lookupPanic(), !dbg !38551
  unreachable, !dbg !38551
}
