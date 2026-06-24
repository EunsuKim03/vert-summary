define i64 @f_gold(double %h, double %m) local_unnamed_addr #0 !dbg !43671 {
entry:
    #dbg_value(double %h, !43673, !DIExpression(), !43678)
    #dbg_value(double %m, !43674, !DIExpression(), !43678)
    #dbg_value(double %h, !43673, !DIExpression(), !43679)
    #dbg_value(ptr undef, !43680, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43694)
    #dbg_value(ptr undef, !43701, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43712)
    #dbg_value(ptr undef, !43710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43713)
  %0 = fcmp olt double %h, 0.000000e+00, !dbg !43714
    #dbg_value(double %m, !43674, !DIExpression(), !43715)
  %1 = fcmp olt double %m, 0.000000e+00
  %or.cond = select i1 %0, i1 true, i1 %1, !dbg !43716
    #dbg_value(double %h, !43673, !DIExpression(), !43717)
  %2 = fcmp ogt double %h, 1.200000e+01
  %or.cond17 = or i1 %2, %or.cond, !dbg !43716
    #dbg_value(double %m, !43674, !DIExpression(), !43718)
  %3 = fcmp ogt double %m, 6.000000e+01
  %or.cond18 = select i1 %or.cond17, i1 true, i1 %3, !dbg !43716
  br i1 %or.cond18, label %if.then, label %if.done, !dbg !43716

if.then:                                          ; preds = %entry
    #dbg_value(ptr undef, !43710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43713)
    #dbg_value(i64 1, !43710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43713)
    #dbg_value(i64 1, !43710, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !43713)
    #dbg_value({ ptr, i64, i64 } poison, !43710, !DIExpression(), !43719)
    #dbg_value(ptr @"reflect/types.type:pointer:named:os.File", !43700, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43712)
    #dbg_value(ptr @"os$alloc.173", !43700, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43712)
    #dbg_value(ptr undef, !43701, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43712)
    #dbg_value(i64 1, !43701, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43712)
    #dbg_value(i64 1, !43701, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !43712)
    #dbg_value(ptr @fmt.ppFree, !43720, !DIExpression(), !43728)
    #dbg_value(ptr @fmt.ppFree, !43720, !DIExpression(), !43737)
    #dbg_value(ptr @fmt.ppFree, !17013, !DIExpression(), !43738)
    #dbg_value(ptr @fmt.ppFree, !17013, !DIExpression(), !43740)
    #dbg_value(ptr @fmt.ppFree, !17020, !DIExpression(), !43741)
    #dbg_value(i32 0, !17025, !DIExpression(), !43741)
    #dbg_value(i32 1, !17026, !DIExpression(), !43741)
    #dbg_value(ptr @fmt.ppFree, !17020, !DIExpression(), !43743)
    #dbg_value(i32 0, !17025, !DIExpression(), !43744)
    #dbg_value(i32 1, !17026, !DIExpression(), !43745)
    #dbg_value(ptr @fmt.ppFree, !17032, !DIExpression(), !43746)
    #dbg_value(i32 0, !17037, !DIExpression(), !43746)
    #dbg_value(i32 1, !17038, !DIExpression(), !43746)
  %4 = cmpxchg ptr @fmt.ppFree, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !43746
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !43746
  br i1 %5, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %for.loop.preheader.i.i.i.i.i, !dbg !43748

for.loop.preheader.i.i.i.i.i:                     ; preds = %if.then
    #dbg_value(ptr @fmt.ppFree, !17013, !DIExpression(), !43749)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43750)
    #dbg_value(i32 2, !16972, !DIExpression(), !43750)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43752)
    #dbg_value(i32 2, !16972, !DIExpression(), !43753)
    #dbg_value(ptr @fmt.ppFree, !16977, !DIExpression(), !43754)
    #dbg_value(i32 2, !16983, !DIExpression(), !43754)
  %6 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !43754
  %.not4.i.i.i.i.i = icmp eq i32 %6, 0, !dbg !43756
  br i1 %.not4.i.i.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", !dbg !43748

"(*internal/futex.Futex).Wait.exit.i.i.i.i.i":    ; preds = %for.loop.preheader.i.i.i.i.i, %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !17013, !DIExpression(), !43757)
    #dbg_value(ptr @fmt.ppFree, !17051, !DIExpression(), !43758)
    #dbg_value(i32 2, !17056, !DIExpression(), !43760)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree, i32 2) #27, !dbg !43761
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43752)
    #dbg_value(i32 2, !16972, !DIExpression(), !43753)
    #dbg_value(ptr @fmt.ppFree, !16977, !DIExpression(), !43754)
    #dbg_value(i32 2, !16983, !DIExpression(), !43754)
  %7 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !43754
  %.not.i.i.i.i.i = icmp eq i32 %7, 0, !dbg !43756
  br i1 %.not.i.i.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", !dbg !43748

"(*internal/task.Mutex).Lock.exit.i.i.i.i":       ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", %for.loop.preheader.i.i.i.i.i, %if.then
    #dbg_value(ptr @fmt.ppFree, !43720, !DIExpression(), !43762)
  %.unpack12.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !43763
  %8 = icmp sgt i64 %.unpack12.i.i.i.i, 0, !dbg !43764
  br i1 %8, label %deref.next8.i.i.i.i, label %gep.next28.i.i.i.i, !dbg !43765

deref.next8.i.i.i.i:                              ; preds = %"(*internal/task.Mutex).Lock.exit.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !43720, !DIExpression(), !43766)
    #dbg_value(ptr @fmt.ppFree, !43720, !DIExpression(), !43767)
  %9 = add nsw i64 %.unpack12.i.i.i.i, -1, !dbg !43768
    #dbg_value({ ptr, ptr } poison, !43726, !DIExpression(), !43769)
    #dbg_value(ptr @fmt.ppFree, !43720, !DIExpression(), !43770)
    #dbg_value(ptr @fmt.ppFree, !43720, !DIExpression(), !43771)
  %.unpack27.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !43772
    #dbg_value(ptr @fmt.ppFree, !43720, !DIExpression(), !43773)
  %slice.highmax.i.i.i.i = icmp ugt i64 %9, %.unpack27.i.i.i.i, !dbg !43774
  br i1 %slice.highmax.i.i.i.i, label %slice.throw.i.i.i.i, label %store.next.i.i.i.i, !dbg !43774

store.next.i.i.i.i:                               ; preds = %deref.next8.i.i.i.i
  %.unpack16.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !43775
  %10 = getelementptr inbounds nuw { ptr, ptr }, ptr %.unpack16.i.i.i.i, i64 %9, !dbg !43776
  %.elt23.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8, !dbg !43776
  %.unpack24.i.i.i.i = load ptr, ptr %.elt23.i.i.i.i, align 8, !dbg !43776
  %.unpack22.i.i.i.i = load ptr, ptr %10, align 8, !dbg !43776
  store i64 %9, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !43777
    #dbg_value({ ptr, i64, i64 } poison, !43727, !DIExpression(), !43777)
    #dbg_value(ptr @fmt.ppFree, !43720, !DIExpression(), !43778)
  %11 = insertvalue { ptr, ptr } poison, ptr %.unpack22.i.i.i.i, 0, !dbg !43776
  %12 = insertvalue { ptr, ptr } %11, ptr %.unpack24.i.i.i.i, 1, !dbg !43776
    #dbg_value({ ptr, ptr } %12, !43726, !DIExpression(), !43769)
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !43779)
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !43781)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43782)
    #dbg_value(i32 0, !16972, !DIExpression(), !43782)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43784)
    #dbg_value(i32 0, !16972, !DIExpression(), !43785)
    #dbg_value(ptr @fmt.ppFree, !16977, !DIExpression(), !43786)
    #dbg_value(i32 0, !16983, !DIExpression(), !43786)
  %13 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !43786
    #dbg_value(i32 %13, !16961, !DIExpression(), !43788)
    #dbg_value(i32 %13, !16961, !DIExpression(), !43789)
  switch i32 %13, label %"(*sync.Pool).Get.exit.i.i.i" [
    i32 0, label %if.then.i.i.i.i.i
    i32 2, label %gep.next5.i.i.i.i.i
  ], !dbg !43790

if.then.i.i.i.i.i:                                ; preds = %store.next.i.i.i.i
  call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !43791
  unreachable, !dbg !43791

gep.next5.i.i.i.i.i:                              ; preds = %store.next.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !43792)
    #dbg_value(ptr @fmt.ppFree, !16991, !DIExpression(), !43793)
    #dbg_value(ptr @fmt.ppFree, !16991, !DIExpression(), !43795)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !43796
  br label %"(*sync.Pool).Get.exit.i.i.i", !dbg !43790

gep.next28.i.i.i.i:                               ; preds = %"(*internal/task.Mutex).Lock.exit.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !43720, !DIExpression(), !43797)
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !43798)
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !43800)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43801)
    #dbg_value(i32 0, !16972, !DIExpression(), !43801)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43803)
    #dbg_value(i32 0, !16972, !DIExpression(), !43804)
    #dbg_value(ptr @fmt.ppFree, !16977, !DIExpression(), !43805)
    #dbg_value(i32 0, !16983, !DIExpression(), !43805)
  %14 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !43805
    #dbg_value(i32 %14, !16961, !DIExpression(), !43807)
    #dbg_value(i32 %14, !16961, !DIExpression(), !43808)
  switch i32 %14, label %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i" [
    i32 0, label %if.then.i35.i.i.i.i
    i32 2, label %gep.next5.i34.i.i.i.i
  ], !dbg !43809

if.then.i35.i.i.i.i:                              ; preds = %gep.next28.i.i.i.i
  call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !43810
  unreachable, !dbg !43810

gep.next5.i34.i.i.i.i:                            ; preds = %gep.next28.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !43811)
    #dbg_value(ptr @fmt.ppFree, !16991, !DIExpression(), !43812)
    #dbg_value(ptr @fmt.ppFree, !16991, !DIExpression(), !43814)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !43815
  br label %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i", !dbg !43809

"(*internal/task.Mutex).Unlock.exit36.i.i.i.i":   ; preds = %gep.next5.i34.i.i.i.i, %gep.next28.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !43720, !DIExpression(), !43816)
  %.unpack14.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 16), align 8, !dbg !43817
  %15 = icmp eq ptr %.unpack14.i.i.i.i, null, !dbg !43818
  br i1 %15, label %"(*sync.Pool).Get.exit.i.i.i", label %fpcall.next.i.i.i.i, !dbg !43765

fpcall.next.i.i.i.i:                              ; preds = %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !43720, !DIExpression(), !43819)
  %.unpack.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 8), align 8, !dbg !43820
  %16 = call { ptr, ptr } %.unpack14.i.i.i.i(ptr %.unpack.i.i.i.i) #27, !dbg !43821
  br label %"(*sync.Pool).Get.exit.i.i.i", !dbg !43822

slice.throw.i.i.i.i:                              ; preds = %deref.next8.i.i.i.i
  call fastcc void @runtime.slicePanic(), !dbg !43774
  unreachable, !dbg !43774

"(*sync.Pool).Get.exit.i.i.i":                    ; preds = %fpcall.next.i.i.i.i, %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i", %gep.next5.i.i.i.i.i, %store.next.i.i.i.i
  %common.ret.op.i.i.i.i = phi { ptr, ptr } [ %16, %fpcall.next.i.i.i.i ], [ zeroinitializer, %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i" ], [ %12, %store.next.i.i.i.i ], [ %12, %gep.next5.i.i.i.i.i ]
  %interface.type.i.i.i = extractvalue { ptr, ptr } %common.ret.op.i.i.i.i, 0, !dbg !43823
  %typeassert.ok3.i.i.i = icmp eq ptr %interface.type.i.i.i, @"reflect/types.type:pointer:named:fmt.pp", !dbg !43823
  %typeassert.value.ptr.i.i.i = extractvalue { ptr, ptr } %common.ret.op.i.i.i.i, 1
    #dbg_value(i1 %typeassert.ok3.i.i.i, !32854, !DIExpression(), !43824)
    #dbg_value(i1 %typeassert.ok3.i.i.i, !32854, !DIExpression(), !43826)
  br i1 %typeassert.ok3.i.i.i, label %runtime.interfaceTypeAssert.exit.i.i.i, label %if.then.i.i.i.i, !dbg !43827

if.then.i.i.i.i:                                  ; preds = %"(*sync.Pool).Get.exit.i.i.i"
  call fastcc void @runtime.runtimePanic(ptr nonnull @"runtime$string.11", i64 18), !dbg !43828
  unreachable, !dbg !43827

runtime.interfaceTypeAssert.exit.i.i.i:           ; preds = %"(*sync.Pool).Get.exit.i.i.i"
    #dbg_value(ptr poison, !43732, !DIExpression(), !43829)
    #dbg_value(ptr poison, !43732, !DIExpression(), !43830)
  %.not.i.i.i = icmp eq ptr %typeassert.value.ptr.i.i.i, null, !dbg !43831
  br i1 %.not.i.i.i, label %gep.throw.i.i.i, label %fmt.newPrinter.exit.i.i, !dbg !43831

gep.throw.i.i.i:                                  ; preds = %runtime.interfaceTypeAssert.exit.i.i.i
  call fastcc void @runtime.nilPanic(), !dbg !43831
  unreachable, !dbg !43831

fmt.newPrinter.exit.i.i:                          ; preds = %runtime.interfaceTypeAssert.exit.i.i.i
  %17 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 178, !dbg !43831
  store i1 false, ptr %17, align 1, !dbg !43831
    #dbg_value(i1 false, !43733, !DIExpression(), !43831)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43732, !DIExpression(), !43832)
  %18 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 179, !dbg !43833
  store i1 false, ptr %18, align 1, !dbg !43833
    #dbg_value(i1 false, !43734, !DIExpression(), !43833)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43732, !DIExpression(), !43834)
  %19 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 180, !dbg !43835
  store i1 false, ptr %19, align 1, !dbg !43835
    #dbg_value(i1 false, !43735, !DIExpression(), !43835)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43732, !DIExpression(), !43836)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43732, !DIExpression(), !43837)
  %20 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 64, !dbg !43838
    #dbg_value(ptr %20, !43839, !DIExpression(), !43846)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43844, !DIExpression(), !43846)
    #dbg_value(ptr %20, !43839, !DIExpression(), !43848)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43844, !DIExpression(), !43849)
  store ptr %typeassert.value.ptr.i.i.i, ptr %20, align 8, !dbg !43850
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43845, !DIExpression(), !43850)
    #dbg_value(ptr %20, !43839, !DIExpression(), !43851)
    #dbg_value(ptr %20, !36244, !DIExpression(), !43852)
    #dbg_value(ptr %20, !36244, !DIExpression(), !43854)
  %21 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 72, !dbg !43855
    #dbg_value(%fmt.fmtFlags zeroinitializer, !36249, !DIExpression(), !43855)
    #dbg_value(ptr %20, !36244, !DIExpression(), !43856)
  %22 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 88, !dbg !43857
    #dbg_value(i64 0, !36250, !DIExpression(), !43857)
    #dbg_value(ptr %20, !36244, !DIExpression(), !43858)
    #dbg_value(i64 0, !36251, !DIExpression(), !43859)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %21, i8 0, i64 9, i1 false), !dbg !43855
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false), !dbg !43857
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43732, !DIExpression(), !43860)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43702, !DIExpression(), !43861)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43702, !DIExpression(), !43862)
    #dbg_value({ ptr, i64, i64 } poison, !43701, !DIExpression(), !43863)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43689, !DIExpression(), !43694)
    #dbg_value(ptr undef, !43680, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43694)
    #dbg_value(i64 1, !43680, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43694)
    #dbg_value(i64 1, !43680, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !43694)
    #dbg_value(i1 false, !43690, !DIExpression(), !43864)
    #dbg_value({ ptr, i64, i64 } poison, !43680, !DIExpression(), !43865)
    #dbg_value(i64 poison, !43691, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !43866)
    #dbg_value({ ptr, ptr } poison, !43692, !DIExpression(), !43867)
    #dbg_value({ ptr, ptr } poison, !43692, !DIExpression(), !43868)
    #dbg_value(i1 poison, !43693, !DIExpression(), !43869)
    #dbg_value(i64 poison, !43691, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !43870)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43689, !DIExpression(), !43871)
    #dbg_value({ ptr, ptr } poison, !43692, !DIExpression(), !43872)
  call fastcc void @"(*fmt.pp).printArg"(ptr nonnull dereferenceable_or_null(208) %typeassert.value.ptr.i.i.i, ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"main$pack"), !dbg !43873
    #dbg_value(i1 poison, !43693, !DIExpression(), !43874)
    #dbg_value(i1 poison, !43690, !DIExpression(), !43875)
    #dbg_value({ ptr, ptr } poison, !43700, !DIExpression(), !43876)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43702, !DIExpression(), !43877)
  %.unpack.i.i = load ptr, ptr %typeassert.value.ptr.i.i.i, align 8, !dbg !43878
  %.elt2.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 8, !dbg !43878
  %.unpack3.i.i = load i64, ptr %.elt2.i.i, align 8, !dbg !43878
  %.elt4.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 16, !dbg !43878
  %.unpack5.i.i = load i64, ptr %.elt4.i.i, align 8, !dbg !43878
  %23 = call fastcc { i64, { ptr, ptr } } @"(*os.File).Write"(ptr nonnull @"os$alloc.173", ptr %.unpack.i.i, i64 %.unpack3.i.i), !dbg !43879
    #dbg_value(i64 poison, !43703, !DIExpression(), !43880)
    #dbg_value({ ptr, ptr } poison, !43704, !DIExpression(), !43881)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43702, !DIExpression(), !43882)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43883, !DIExpression(), !43892)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43883, !DIExpression(), !43894)
  %.unpack15.i.i.i = load i64, ptr %.elt4.i.i, align 8, !dbg !43895
  %24 = icmp sgt i64 %.unpack15.i.i.i, 65536, !dbg !43896
  br i1 %24, label %store.next.i.i.i, label %slice.next39.i.i.i, !dbg !43897

store.next.i.i.i:                                 ; preds = %fmt.newPrinter.exit.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43883, !DIExpression(), !43898)
    #dbg_value({ ptr, i64, i64 } zeroinitializer, !43888, !DIExpression(), !43899)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %typeassert.value.ptr.i.i.i, i8 0, i64 16, i1 false), !dbg !43899
  br label %deref.next8.i.i.i, !dbg !43897

deref.next8.i.i.i:                                ; preds = %slice.next39.i.i.i, %store.next.i.i.i
  %storemerge.i.i.i = phi i64 [ %.unpack15.i.i.i, %slice.next39.i.i.i ], [ 0, %store.next.i.i.i ], !dbg !43897
  store i64 %storemerge.i.i.i, ptr %.elt4.i.i, align 8, !dbg !43897
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43883, !DIExpression(), !43900)
  %.elt29.i.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 200, !dbg !43901
  %.unpack30.i.i.i = load i64, ptr %.elt29.i.i.i, align 8, !dbg !43901
  %25 = icmp sgt i64 %.unpack30.i.i.i, 8, !dbg !43902
  br i1 %25, label %store.next13.i.i.i, label %store.next17.i.i.i, !dbg !43897

store.next13.i.i.i:                               ; preds = %deref.next8.i.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43883, !DIExpression(), !43903)
  %26 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 184, !dbg !43904
    #dbg_value({ ptr, i64, i64 } zeroinitializer, !43889, !DIExpression(), !43904)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false), !dbg !43904
  br label %store.next17.i.i.i, !dbg !43897

store.next17.i.i.i:                               ; preds = %store.next13.i.i.i, %deref.next8.i.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43883, !DIExpression(), !43905)
  %27 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 24, !dbg !43906
    #dbg_value({ ptr, ptr } zeroinitializer, !43890, !DIExpression(), !43906)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43883, !DIExpression(), !43907)
    #dbg_value(%reflect.Value zeroinitializer, !43891, !DIExpression(), !43908)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43883, !DIExpression(), !43909)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43883, !DIExpression(), !43910)
  %.repack39.i.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 192, !dbg !43911
  store i64 0, ptr %.repack39.i.i.i, align 8, !dbg !43911
    #dbg_value({ ptr, i64, i64 } poison, !43889, !DIExpression(), !43911)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43883, !DIExpression(), !43912)
    #dbg_value(ptr @fmt.ppFree, !43913, !DIExpression(), !43920)
    #dbg_value(ptr @"reflect/types.type:pointer:named:fmt.pp", !43918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43920)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43920)
    #dbg_value(ptr @fmt.ppFree, !43913, !DIExpression(), !43922)
    #dbg_value(ptr undef, !11104, !DIExpression(), !43923)
    #dbg_value(ptr undef, !11117, !DIExpression(), !43926)
    #dbg_value(ptr @fmt.ppFree, !17013, !DIExpression(), !43927)
    #dbg_value(ptr @fmt.ppFree, !17013, !DIExpression(), !43929)
    #dbg_value(ptr @fmt.ppFree, !17020, !DIExpression(), !43930)
    #dbg_value(i32 0, !17025, !DIExpression(), !43930)
    #dbg_value(i32 1, !17026, !DIExpression(), !43930)
    #dbg_value(ptr @fmt.ppFree, !17020, !DIExpression(), !43932)
    #dbg_value(i32 0, !17025, !DIExpression(), !43933)
    #dbg_value(i32 1, !17026, !DIExpression(), !43934)
    #dbg_value(ptr @fmt.ppFree, !17032, !DIExpression(), !43935)
    #dbg_value(i32 0, !17037, !DIExpression(), !43935)
    #dbg_value(i32 1, !17038, !DIExpression(), !43935)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %27, i8 0, i64 40, i1 false), !dbg !43906
  %28 = cmpxchg ptr @fmt.ppFree, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !43935
  %29 = extractvalue { i32, i1 } %28, 1, !dbg !43935
  br i1 %29, label %"(*internal/task.Mutex).Lock.exit.i.i10.i.i", label %for.loop.preheader.i.i.i6.i.i, !dbg !43937

for.loop.preheader.i.i.i6.i.i:                    ; preds = %store.next17.i.i.i
    #dbg_value(ptr @fmt.ppFree, !17013, !DIExpression(), !43938)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43939)
    #dbg_value(i32 2, !16972, !DIExpression(), !43939)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43941)
    #dbg_value(i32 2, !16972, !DIExpression(), !43942)
    #dbg_value(ptr @fmt.ppFree, !16977, !DIExpression(), !43943)
    #dbg_value(i32 2, !16983, !DIExpression(), !43943)
  %30 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !43943
  %.not4.i.i.i7.i.i = icmp eq i32 %30, 0, !dbg !43945
  br i1 %.not4.i.i.i7.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i10.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i", !dbg !43937

"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i":   ; preds = %for.loop.preheader.i.i.i6.i.i, %"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i"
    #dbg_value(ptr @fmt.ppFree, !17013, !DIExpression(), !43946)
    #dbg_value(ptr @fmt.ppFree, !17051, !DIExpression(), !43947)
    #dbg_value(i32 2, !17056, !DIExpression(), !43949)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree, i32 2) #27, !dbg !43950
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43941)
    #dbg_value(i32 2, !16972, !DIExpression(), !43942)
    #dbg_value(ptr @fmt.ppFree, !16977, !DIExpression(), !43943)
    #dbg_value(i32 2, !16983, !DIExpression(), !43943)
  %31 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !43943
  %.not.i.i.i9.i.i = icmp eq i32 %31, 0, !dbg !43945
  br i1 %.not.i.i.i9.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i10.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i", !dbg !43937

"(*internal/task.Mutex).Lock.exit.i.i10.i.i":     ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i", %for.loop.preheader.i.i.i6.i.i, %store.next17.i.i.i
    #dbg_value(ptr @fmt.ppFree, !43913, !DIExpression(), !43951)
    #dbg_value(ptr @fmt.ppFree, !43913, !DIExpression(), !43952)
  %.unpack.i.i11.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !43953
  %.unpack2.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !43953
  %.unpack3.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !43953
    #dbg_value({ ptr, ptr } poison, !43918, !DIExpression(), !43954)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11116, !DIExpression(), !43926)
    #dbg_value(ptr undef, !11117, !DIExpression(), !43926)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11118, !DIExpression(), !43926)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11119, !DIExpression(), !43926)
    #dbg_value(i64 1, !11120, !DIExpression(), !43926)
    #dbg_value(i64 16, !11121, !DIExpression(), !43926)
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11122, !DIExpression(), !43926)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11118, !DIExpression(), !43955)
    #dbg_value(i64 1, !11120, !DIExpression(), !43956)
  %32 = add i64 %.unpack2.i.i.i.i, 1, !dbg !43957
    #dbg_value(i64 %32, !11123, !DIExpression(), !43958)
    #dbg_value(i64 1, !11120, !DIExpression(), !43959)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11116, !DIExpression(), !43960)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11118, !DIExpression(), !43961)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11119, !DIExpression(), !43962)
    #dbg_value(i64 %32, !11123, !DIExpression(), !43963)
    #dbg_value(i64 16, !11121, !DIExpression(), !43964)
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11122, !DIExpression(), !43965)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11142, !DIExpression(), !43966)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11147, !DIExpression(), !43966)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11148, !DIExpression(), !43966)
    #dbg_value(i64 %32, !11149, !DIExpression(), !43966)
    #dbg_value(i64 16, !11150, !DIExpression(), !43966)
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11151, !DIExpression(), !43966)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11148, !DIExpression(), !43968)
    #dbg_value(i64 %32, !11149, !DIExpression(), !43969)
  %.not.i.i.i.i.i.i = icmp ult i64 %.unpack3.i.i.i.i, %32, !dbg !43970
  br i1 %.not.i.i.i.i.i.i, label %shift.next.i.i.i.i.i.i, label %runtime.sliceAppend.exit.i.i.i.i, !dbg !43971

shift.next.i.i.i.i.i.i:                           ; preds = %"(*internal/task.Mutex).Lock.exit.i.i10.i.i"
    #dbg_value(i64 %32, !11149, !DIExpression(), !43972)
    #dbg_value(i64 %32, !11160, !DIExpression(), !43973)
  %33 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %32, i1 true), !dbg !43973
  %34 = sub nuw nsw i64 64, %33, !dbg !43973
  %shift.overflow.i.i.i.i.i.i = icmp eq i64 %33, 0, !dbg !43975
  %35 = shl nuw i64 1, %34, !dbg !43975
  %shift.result.i.i.i.i.i.i = select i1 %shift.overflow.i.i.i.i.i.i, i64 0, i64 %35, !dbg !43975
    #dbg_value(i64 %shift.result.i.i.i.i.i.i, !11149, !DIExpression(), !43976)
    #dbg_value(i64 %shift.result.i.i.i.i.i.i, !11149, !DIExpression(), !43977)
    #dbg_value(i64 16, !11150, !DIExpression(), !43978)
  %36 = shl i64 %shift.result.i.i.i.i.i.i, 4, !dbg !43979
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11151, !DIExpression(), !43980)
  %37 = call fastcc ptr @runtime.alloc(i64 %36, ptr nonnull inttoptr (i64 389 to ptr)), !dbg !43981
    #dbg_value(ptr %37, !11152, !DIExpression(), !43982)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11147, !DIExpression(), !43983)
  %.not1.i.i.i.i.i.i = icmp eq i64 %.unpack2.i.i.i.i, 0, !dbg !43984
  br i1 %.not1.i.i.i.i.i.i, label %runtime.sliceAppend.exit.i.i.i.i, label %if.then1.i.i.i.i.i.i, !dbg !43971

if.then1.i.i.i.i.i.i:                             ; preds = %shift.next.i.i.i.i.i.i
    #dbg_value(ptr %37, !11152, !DIExpression(), !43985)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11142, !DIExpression(), !43986)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11147, !DIExpression(), !43987)
    #dbg_value(i64 16, !11150, !DIExpression(), !43988)
  %38 = shl i64 %.unpack2.i.i.i.i, 4, !dbg !43989
    #dbg_value(ptr %37, !11107, !DIExpression(), !43990)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11104, !DIExpression(), !43990)
    #dbg_value(i64 %38, !11108, !DIExpression(), !43990)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %37, ptr readonly align 1 %.unpack.i.i11.i.i, i64 %38, i1 false), !dbg !43990
  br label %runtime.sliceAppend.exit.i.i.i.i, !dbg !43971

runtime.sliceAppend.exit.i.i.i.i:                 ; preds = %if.then1.i.i.i.i.i.i, %shift.next.i.i.i.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i10.i.i"
  %oldBuf.pn.i.i.i.i.i.i = phi ptr [ %.unpack.i.i11.i.i, %"(*internal/task.Mutex).Lock.exit.i.i10.i.i" ], [ %37, %if.then1.i.i.i.i.i.i ], [ %37, %shift.next.i.i.i.i.i.i ]
  %oldCap.pn.i.i.i.i.i.i = phi i64 [ %.unpack3.i.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i10.i.i" ], [ %shift.result.i.i.i.i.i.i, %if.then1.i.i.i.i.i.i ], [ %shift.result.i.i.i.i.i.i, %shift.next.i.i.i.i.i.i ]
    #dbg_value(ptr %oldBuf.pn.i.i.i.i.i.i, !11116, !DIExpression(), !43992)
    #dbg_value(i64 %oldCap.pn.i.i.i.i.i.i, !11119, !DIExpression(), !43993)
    #dbg_value(ptr %oldBuf.pn.i.i.i.i.i.i, !11116, !DIExpression(), !43994)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11118, !DIExpression(), !43995)
    #dbg_value(i64 16, !11121, !DIExpression(), !43996)
  %39 = shl i64 %.unpack2.i.i.i.i, 4, !dbg !43997
  %40 = getelementptr i8, ptr %oldBuf.pn.i.i.i.i.i.i, i64 %39, !dbg !43998
    #dbg_value(ptr undef, !11117, !DIExpression(), !43999)
    #dbg_value(i64 1, !11120, !DIExpression(), !44000)
    #dbg_value(i64 16, !11121, !DIExpression(), !44001)
    #dbg_value(ptr %40, !11107, !DIExpression(), !43923)
    #dbg_value(ptr undef, !11104, !DIExpression(), !43923)
    #dbg_value(i64 16, !11108, !DIExpression(), !43923)
  store ptr @"reflect/types.type:pointer:named:fmt.pp", ptr %40, align 1, !dbg !43923
  %stackalloc.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %40, i64 8, !dbg !43923
  store ptr %typeassert.value.ptr.i.i.i, ptr %stackalloc.sroa.10.0..sroa_idx.i.i.i.i, align 1, !dbg !43923
    #dbg_value(ptr %oldBuf.pn.i.i.i.i.i.i, !11116, !DIExpression(), !44002)
    #dbg_value(i64 %32, !11123, !DIExpression(), !44003)
    #dbg_value(i64 %oldCap.pn.i.i.i.i.i.i, !11119, !DIExpression(), !44004)
  store ptr %oldBuf.pn.i.i.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !44005
  store i64 %32, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !44005
  store i64 %oldCap.pn.i.i.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !44005
    #dbg_value({ ptr, i64, i64 } poison, !43919, !DIExpression(), !44005)
    #dbg_value(ptr @fmt.ppFree, !43913, !DIExpression(), !44006)
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !44007)
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !44009)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !44010)
    #dbg_value(i32 0, !16972, !DIExpression(), !44010)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !44012)
    #dbg_value(i32 0, !16972, !DIExpression(), !44013)
    #dbg_value(ptr @fmt.ppFree, !16977, !DIExpression(), !44014)
    #dbg_value(i32 0, !16983, !DIExpression(), !44014)
  %41 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !44014
    #dbg_value(i32 %41, !16961, !DIExpression(), !44016)
    #dbg_value(i32 %41, !16961, !DIExpression(), !44017)
  switch i32 %41, label %if.done [
    i32 0, label %if.then.i.i.i13.i.i
    i32 2, label %gep.next5.i.i.i12.i.i
  ], !dbg !44018

if.then.i.i.i13.i.i:                              ; preds = %runtime.sliceAppend.exit.i.i.i.i
  call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !44019
  unreachable, !dbg !44019

gep.next5.i.i.i12.i.i:                            ; preds = %runtime.sliceAppend.exit.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !44020)
    #dbg_value(ptr @fmt.ppFree, !16991, !DIExpression(), !44021)
    #dbg_value(ptr @fmt.ppFree, !16991, !DIExpression(), !44023)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !44024
  br label %if.done, !dbg !44018

slice.next39.i.i.i:                               ; preds = %fmt.newPrinter.exit.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43883, !DIExpression(), !44025)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43883, !DIExpression(), !44026)
  store i64 0, ptr %.elt2.i.i, align 8, !dbg !44027
    #dbg_value({ ptr, i64, i64 } poison, !43888, !DIExpression(), !44027)
  br label %deref.next8.i.i.i, !dbg !43897

if.done:                                          ; preds = %gep.next5.i.i.i12.i.i, %runtime.sliceAppend.exit.i.i.i.i, %entry
    #dbg_value(double %h, !43673, !DIExpression(), !44028)
  %42 = fcmp oeq double %h, 1.200000e+01, !dbg !44029
    #dbg_value(double %m, !43674, !DIExpression(), !44030)
  %43 = fcmp oeq double %m, 6.000000e+01, !dbg !44031
  %44 = select i1 %43, double 0.000000e+00, double %m, !dbg !43716
    #dbg_value(double poison, !43673, !DIExpression(), !44032)
  %45 = fmul double %h, 6.000000e+01, !dbg !44033
  %46 = select i1 %42, double 0.000000e+00, double %45, !dbg !43716
    #dbg_value(double %44, !43674, !DIExpression(), !44034)
  %47 = fadd double %46, %44, !dbg !44035
  %48 = fmul double %47, 5.000000e-01, !dbg !44036
  %abovemin = fcmp oge double %48, 0xC3E0000000000000, !dbg !44037
  %belowmax = fcmp ole double %48, 0x43DFFFFFFFFFFFFE, !dbg !44037
  %inbounds = and i1 %abovemin, %belowmax, !dbg !44037
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !44037
  %isnan = fcmp uno double %48, 0.000000e+00, !dbg !44037
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !44037
  %normal = fptosi double %48 to i64, !dbg !44037
  %49 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !44037
    #dbg_value(i64 %49, !43675, !DIExpression(), !44038)
    #dbg_value(double %44, !43674, !DIExpression(), !44039)
  %50 = fmul double %44, 6.000000e+00, !dbg !44040
  %abovemin7 = fcmp oge double %50, 0xC3E0000000000000, !dbg !44041
  %belowmax8 = fcmp ole double %50, 0x43DFFFFFFFFFFFFE, !dbg !44041
  %inbounds9 = and i1 %abovemin7, %belowmax8, !dbg !44041
  %saturated10 = select i1 %abovemin7, i64 9223372036854775807, i64 -9223372036854775808, !dbg !44041
  %isnan11 = fcmp uno double %50, 0.000000e+00, !dbg !44041
  %remapped12 = select i1 %isnan11, i64 0, i64 %saturated10, !dbg !44041
  %normal13 = fptosi double %50 to i64, !dbg !44041
  %51 = select i1 %inbounds9, i64 %normal13, i64 %remapped12, !dbg !44041
    #dbg_value(i64 %51, !43676, !DIExpression(), !44042)
    #dbg_value(i64 %49, !43675, !DIExpression(), !44043)
    #dbg_value(i64 %51, !43676, !DIExpression(), !44044)
  %52 = sub i64 %49, %51, !dbg !44045
  %53 = sitofp i64 %52 to double, !dbg !44046
    #dbg_value(double %53, !44047, !DIExpression(), !44051)
    #dbg_value(double %53, !44047, !DIExpression(), !44053)
  %54 = call double @llvm.fabs.f64(double %53), !dbg !44054
  %belowmax15 = fcmp ole double %54, 0x43DFFFFFFFFFFFFE, !dbg !44055
  %normal20 = fptosi double %54 to i64, !dbg !44055
  %55 = select i1 %belowmax15, i64 %normal20, i64 9223372036854775807, !dbg !44055
    #dbg_value(i64 %55, !43677, !DIExpression(), !44056)
    #dbg_value(i64 %55, !43677, !DIExpression(), !44057)
  %56 = sub i64 360, %55, !dbg !44058
    #dbg_value(i64 %55, !43677, !DIExpression(), !44059)
    #dbg_value(i64 %56, !44060, !DIExpression(), !44064)
    #dbg_value(i64 %55, !44063, !DIExpression(), !44064)
    #dbg_value(i64 %56, !44060, !DIExpression(), !44066)
    #dbg_value(i64 %55, !44063, !DIExpression(), !44067)
  %x.y.i = call i64 @llvm.smin.i64(i64 %56, i64 %55), !dbg !44068
    #dbg_value(i64 %x.y.i, !43677, !DIExpression(), !44069)
    #dbg_value(i64 %x.y.i, !43677, !DIExpression(), !44070)
  ret i64 %x.y.i, !dbg !44071
}
