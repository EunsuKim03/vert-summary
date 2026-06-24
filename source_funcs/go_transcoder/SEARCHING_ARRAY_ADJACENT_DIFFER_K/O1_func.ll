define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x, i64 %k) local_unnamed_addr #0 !dbg !43671 {
entry:
    #dbg_value(ptr %arr.data, !43675, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43680)
    #dbg_value(i64 %arr.len, !43675, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43680)
    #dbg_value(i64 %arr.cap, !43675, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !43680)
    #dbg_value(i64 %n, !43676, !DIExpression(), !43680)
    #dbg_value(i64 %x, !43677, !DIExpression(), !43680)
    #dbg_value(i64 %k, !43678, !DIExpression(), !43680)
    #dbg_value(i64 0, !43679, !DIExpression(), !43681)
    #dbg_value(ptr undef, !43682, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43696)
    #dbg_value(ptr undef, !43703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43714)
    #dbg_value(ptr undef, !43712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43715)
  %0 = icmp sgt i64 %n, 0, !dbg !43716
  br i1 %0, label %for.body.lr.ph, label %for.done, !dbg !43717

for.body.lr.ph:                                   ; preds = %entry
  %1 = sitofp i64 %k to double
  br label %for.body, !dbg !43717

for.body:                                         ; preds = %for.body.lr.ph, %lookup.next4
  %2 = phi i64 [ 0, %for.body.lr.ph ], [ %11, %lookup.next4 ]
    #dbg_value(i64 %2, !43679, !DIExpression(), !43718)
    #dbg_value({ ptr, i64, i64 } poison, !43675, !DIExpression(), !43719)
    #dbg_value(i64 %2, !43679, !DIExpression(), !43720)
  %.not = icmp ult i64 %2, %arr.len, !dbg !43721
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !43721

lookup.next:                                      ; preds = %for.body
  %3 = getelementptr inbounds i64, ptr %arr.data, i64 %2, !dbg !43721
  %4 = load i64, ptr %3, align 8, !dbg !43721
    #dbg_value(i64 %x, !43677, !DIExpression(), !43722)
  %5 = icmp eq i64 %4, %x, !dbg !43723
  br i1 %5, label %common.ret, label %lookup.next4, !dbg !43717

common.ret:                                       ; preds = %lookup.next, %gep.next5.i.i.i12.i.i, %runtime.sliceAppend.exit.i.i.i.i
  %common.ret.op = phi i64 [ -1, %runtime.sliceAppend.exit.i.i.i.i ], [ -1, %gep.next5.i.i.i12.i.i ], [ %2, %lookup.next ]
  ret i64 %common.ret.op, !dbg !43717

lookup.next4:                                     ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } poison, !43675, !DIExpression(), !43724)
    #dbg_value(i64 %2, !43679, !DIExpression(), !43725)
    #dbg_value(i64 %x, !43677, !DIExpression(), !43726)
  %6 = sub i64 %4, %x, !dbg !43727
  %7 = sitofp i64 %6 to double, !dbg !43728
    #dbg_value(double %7, !43729, !DIExpression(), !43733)
  %8 = call double @llvm.fabs.f64(double %7), !dbg !43735
    #dbg_value(i64 %k, !43678, !DIExpression(), !43736)
  %9 = fdiv double %8, %1, !dbg !43737
  %abovemin = fcmp oge double %9, 0xC3E0000000000000, !dbg !43738
  %belowmax = fcmp ole double %9, 0x43DFFFFFFFFFFFFE, !dbg !43738
  %inbounds = and i1 %abovemin, %belowmax, !dbg !43738
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !43738
  %isnan = fcmp uno double %9, 0.000000e+00, !dbg !43738
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !43738
  %normal = fptosi double %9 to i64, !dbg !43738
  %10 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !43738
    #dbg_value(i64 1, !43739, !DIExpression(), !43743)
    #dbg_value(i64 %10, !43742, !DIExpression(), !43745)
  %.y.i = call range(i64 1, -9223372036854775808) i64 @llvm.smax.i64(i64 %10, i64 1), !dbg !43746
  %11 = add i64 %.y.i, %2, !dbg !43747
    #dbg_value(i64 %11, !43679, !DIExpression(), !43718)
    #dbg_value(i64 %n, !43676, !DIExpression(), !43748)
  %12 = icmp slt i64 %11, %n, !dbg !43716
  br i1 %12, label %for.body, label %for.done, !dbg !43717

for.done:                                         ; preds = %lookup.next4, %entry
    #dbg_value(ptr undef, !43712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43715)
    #dbg_value(i64 1, !43712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43715)
    #dbg_value(i64 1, !43712, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !43715)
    #dbg_value({ ptr, i64, i64 } poison, !43712, !DIExpression(), !43749)
    #dbg_value(ptr @"reflect/types.type:pointer:named:os.File", !43702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43714)
    #dbg_value(ptr @"os$alloc.173", !43702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43714)
    #dbg_value(ptr undef, !43703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43714)
    #dbg_value(i64 1, !43703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43714)
    #dbg_value(i64 1, !43703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !43714)
    #dbg_value(ptr @fmt.ppFree, !43750, !DIExpression(), !43758)
    #dbg_value(ptr @fmt.ppFree, !43750, !DIExpression(), !43767)
    #dbg_value(ptr @fmt.ppFree, !17013, !DIExpression(), !43768)
    #dbg_value(ptr @fmt.ppFree, !17013, !DIExpression(), !43770)
    #dbg_value(ptr @fmt.ppFree, !17020, !DIExpression(), !43771)
    #dbg_value(i32 0, !17025, !DIExpression(), !43771)
    #dbg_value(i32 1, !17026, !DIExpression(), !43771)
    #dbg_value(ptr @fmt.ppFree, !17020, !DIExpression(), !43773)
    #dbg_value(i32 0, !17025, !DIExpression(), !43774)
    #dbg_value(i32 1, !17026, !DIExpression(), !43775)
    #dbg_value(ptr @fmt.ppFree, !17032, !DIExpression(), !43776)
    #dbg_value(i32 0, !17037, !DIExpression(), !43776)
    #dbg_value(i32 1, !17038, !DIExpression(), !43776)
  %13 = cmpxchg ptr @fmt.ppFree, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !43776
  %14 = extractvalue { i32, i1 } %13, 1, !dbg !43776
  br i1 %14, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %for.loop.preheader.i.i.i.i.i, !dbg !43778

for.loop.preheader.i.i.i.i.i:                     ; preds = %for.done
    #dbg_value(ptr @fmt.ppFree, !17013, !DIExpression(), !43779)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43780)
    #dbg_value(i32 2, !16972, !DIExpression(), !43780)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43782)
    #dbg_value(i32 2, !16972, !DIExpression(), !43783)
    #dbg_value(ptr @fmt.ppFree, !16977, !DIExpression(), !43784)
    #dbg_value(i32 2, !16983, !DIExpression(), !43784)
  %15 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !43784
  %.not4.i.i.i.i.i = icmp eq i32 %15, 0, !dbg !43786
  br i1 %.not4.i.i.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", !dbg !43778

"(*internal/futex.Futex).Wait.exit.i.i.i.i.i":    ; preds = %for.loop.preheader.i.i.i.i.i, %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !17013, !DIExpression(), !43787)
    #dbg_value(ptr @fmt.ppFree, !17051, !DIExpression(), !43788)
    #dbg_value(i32 2, !17056, !DIExpression(), !43790)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree, i32 2) #27, !dbg !43791
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43782)
    #dbg_value(i32 2, !16972, !DIExpression(), !43783)
    #dbg_value(ptr @fmt.ppFree, !16977, !DIExpression(), !43784)
    #dbg_value(i32 2, !16983, !DIExpression(), !43784)
  %16 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !43784
  %.not.i.i.i.i.i = icmp eq i32 %16, 0, !dbg !43786
  br i1 %.not.i.i.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", !dbg !43778

"(*internal/task.Mutex).Lock.exit.i.i.i.i":       ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", %for.loop.preheader.i.i.i.i.i, %for.done
    #dbg_value(ptr @fmt.ppFree, !43750, !DIExpression(), !43792)
  %.unpack12.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !43793
  %17 = icmp sgt i64 %.unpack12.i.i.i.i, 0, !dbg !43794
  br i1 %17, label %deref.next8.i.i.i.i, label %gep.next28.i.i.i.i, !dbg !43795

deref.next8.i.i.i.i:                              ; preds = %"(*internal/task.Mutex).Lock.exit.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !43750, !DIExpression(), !43796)
    #dbg_value(ptr @fmt.ppFree, !43750, !DIExpression(), !43797)
  %18 = add nsw i64 %.unpack12.i.i.i.i, -1, !dbg !43798
    #dbg_value({ ptr, ptr } poison, !43756, !DIExpression(), !43799)
    #dbg_value(ptr @fmt.ppFree, !43750, !DIExpression(), !43800)
    #dbg_value(ptr @fmt.ppFree, !43750, !DIExpression(), !43801)
  %.unpack27.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !43802
    #dbg_value(ptr @fmt.ppFree, !43750, !DIExpression(), !43803)
  %slice.highmax.i.i.i.i = icmp ugt i64 %18, %.unpack27.i.i.i.i, !dbg !43804
  br i1 %slice.highmax.i.i.i.i, label %slice.throw.i.i.i.i, label %store.next.i.i.i.i, !dbg !43804

store.next.i.i.i.i:                               ; preds = %deref.next8.i.i.i.i
  %.unpack16.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !43805
  %19 = getelementptr inbounds nuw { ptr, ptr }, ptr %.unpack16.i.i.i.i, i64 %18, !dbg !43806
  %.elt23.i.i.i.i = getelementptr inbounds nuw i8, ptr %19, i64 8, !dbg !43806
  %.unpack24.i.i.i.i = load ptr, ptr %.elt23.i.i.i.i, align 8, !dbg !43806
  %.unpack22.i.i.i.i = load ptr, ptr %19, align 8, !dbg !43806
  store i64 %18, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !43807
    #dbg_value({ ptr, i64, i64 } poison, !43757, !DIExpression(), !43807)
    #dbg_value(ptr @fmt.ppFree, !43750, !DIExpression(), !43808)
  %20 = insertvalue { ptr, ptr } poison, ptr %.unpack22.i.i.i.i, 0, !dbg !43806
  %21 = insertvalue { ptr, ptr } %20, ptr %.unpack24.i.i.i.i, 1, !dbg !43806
    #dbg_value({ ptr, ptr } %21, !43756, !DIExpression(), !43799)
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !43809)
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !43811)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43812)
    #dbg_value(i32 0, !16972, !DIExpression(), !43812)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43814)
    #dbg_value(i32 0, !16972, !DIExpression(), !43815)
    #dbg_value(ptr @fmt.ppFree, !16977, !DIExpression(), !43816)
    #dbg_value(i32 0, !16983, !DIExpression(), !43816)
  %22 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !43816
    #dbg_value(i32 %22, !16961, !DIExpression(), !43818)
    #dbg_value(i32 %22, !16961, !DIExpression(), !43819)
  switch i32 %22, label %"(*sync.Pool).Get.exit.i.i.i" [
    i32 0, label %if.then.i.i.i.i.i
    i32 2, label %gep.next5.i.i.i.i.i
  ], !dbg !43820

if.then.i.i.i.i.i:                                ; preds = %store.next.i.i.i.i
  call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !43821
  unreachable, !dbg !43821

gep.next5.i.i.i.i.i:                              ; preds = %store.next.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !43822)
    #dbg_value(ptr @fmt.ppFree, !16991, !DIExpression(), !43823)
    #dbg_value(ptr @fmt.ppFree, !16991, !DIExpression(), !43825)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !43826
  br label %"(*sync.Pool).Get.exit.i.i.i", !dbg !43820

gep.next28.i.i.i.i:                               ; preds = %"(*internal/task.Mutex).Lock.exit.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !43750, !DIExpression(), !43827)
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !43828)
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !43830)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43831)
    #dbg_value(i32 0, !16972, !DIExpression(), !43831)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43833)
    #dbg_value(i32 0, !16972, !DIExpression(), !43834)
    #dbg_value(ptr @fmt.ppFree, !16977, !DIExpression(), !43835)
    #dbg_value(i32 0, !16983, !DIExpression(), !43835)
  %23 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !43835
    #dbg_value(i32 %23, !16961, !DIExpression(), !43837)
    #dbg_value(i32 %23, !16961, !DIExpression(), !43838)
  switch i32 %23, label %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i" [
    i32 0, label %if.then.i35.i.i.i.i
    i32 2, label %gep.next5.i34.i.i.i.i
  ], !dbg !43839

if.then.i35.i.i.i.i:                              ; preds = %gep.next28.i.i.i.i
  call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !43840
  unreachable, !dbg !43840

gep.next5.i34.i.i.i.i:                            ; preds = %gep.next28.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !43841)
    #dbg_value(ptr @fmt.ppFree, !16991, !DIExpression(), !43842)
    #dbg_value(ptr @fmt.ppFree, !16991, !DIExpression(), !43844)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !43845
  br label %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i", !dbg !43839

"(*internal/task.Mutex).Unlock.exit36.i.i.i.i":   ; preds = %gep.next5.i34.i.i.i.i, %gep.next28.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !43750, !DIExpression(), !43846)
  %.unpack14.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 16), align 8, !dbg !43847
  %24 = icmp eq ptr %.unpack14.i.i.i.i, null, !dbg !43848
  br i1 %24, label %"(*sync.Pool).Get.exit.i.i.i", label %fpcall.next.i.i.i.i, !dbg !43795

fpcall.next.i.i.i.i:                              ; preds = %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !43750, !DIExpression(), !43849)
  %.unpack.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 8), align 8, !dbg !43850
  %25 = call { ptr, ptr } %.unpack14.i.i.i.i(ptr %.unpack.i.i.i.i) #27, !dbg !43851
  br label %"(*sync.Pool).Get.exit.i.i.i", !dbg !43852

slice.throw.i.i.i.i:                              ; preds = %deref.next8.i.i.i.i
  call fastcc void @runtime.slicePanic(), !dbg !43804
  unreachable, !dbg !43804

"(*sync.Pool).Get.exit.i.i.i":                    ; preds = %fpcall.next.i.i.i.i, %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i", %gep.next5.i.i.i.i.i, %store.next.i.i.i.i
  %common.ret.op.i.i.i.i = phi { ptr, ptr } [ %25, %fpcall.next.i.i.i.i ], [ zeroinitializer, %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i" ], [ %21, %store.next.i.i.i.i ], [ %21, %gep.next5.i.i.i.i.i ]
  %interface.type.i.i.i = extractvalue { ptr, ptr } %common.ret.op.i.i.i.i, 0, !dbg !43853
  %typeassert.ok3.i.i.i = icmp eq ptr %interface.type.i.i.i, @"reflect/types.type:pointer:named:fmt.pp", !dbg !43853
  %typeassert.value.ptr.i.i.i = extractvalue { ptr, ptr } %common.ret.op.i.i.i.i, 1
    #dbg_value(i1 %typeassert.ok3.i.i.i, !32854, !DIExpression(), !43854)
    #dbg_value(i1 %typeassert.ok3.i.i.i, !32854, !DIExpression(), !43856)
  br i1 %typeassert.ok3.i.i.i, label %runtime.interfaceTypeAssert.exit.i.i.i, label %if.then.i.i.i.i, !dbg !43857

if.then.i.i.i.i:                                  ; preds = %"(*sync.Pool).Get.exit.i.i.i"
  call fastcc void @runtime.runtimePanic(ptr nonnull @"runtime$string.11", i64 18), !dbg !43858
  unreachable, !dbg !43857

runtime.interfaceTypeAssert.exit.i.i.i:           ; preds = %"(*sync.Pool).Get.exit.i.i.i"
    #dbg_value(ptr poison, !43762, !DIExpression(), !43859)
    #dbg_value(ptr poison, !43762, !DIExpression(), !43860)
  %.not.i.i.i = icmp eq ptr %typeassert.value.ptr.i.i.i, null, !dbg !43861
  br i1 %.not.i.i.i, label %gep.throw.i.i.i, label %fmt.newPrinter.exit.i.i, !dbg !43861

gep.throw.i.i.i:                                  ; preds = %runtime.interfaceTypeAssert.exit.i.i.i
  call fastcc void @runtime.nilPanic(), !dbg !43861
  unreachable, !dbg !43861

fmt.newPrinter.exit.i.i:                          ; preds = %runtime.interfaceTypeAssert.exit.i.i.i
  %26 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 178, !dbg !43861
  store i1 false, ptr %26, align 1, !dbg !43861
    #dbg_value(i1 false, !43763, !DIExpression(), !43861)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43762, !DIExpression(), !43862)
  %27 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 179, !dbg !43863
  store i1 false, ptr %27, align 1, !dbg !43863
    #dbg_value(i1 false, !43764, !DIExpression(), !43863)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43762, !DIExpression(), !43864)
  %28 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 180, !dbg !43865
  store i1 false, ptr %28, align 1, !dbg !43865
    #dbg_value(i1 false, !43765, !DIExpression(), !43865)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43762, !DIExpression(), !43866)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43762, !DIExpression(), !43867)
  %29 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 64, !dbg !43868
    #dbg_value(ptr %29, !43869, !DIExpression(), !43876)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43874, !DIExpression(), !43876)
    #dbg_value(ptr %29, !43869, !DIExpression(), !43878)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43874, !DIExpression(), !43879)
  store ptr %typeassert.value.ptr.i.i.i, ptr %29, align 8, !dbg !43880
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43875, !DIExpression(), !43880)
    #dbg_value(ptr %29, !43869, !DIExpression(), !43881)
    #dbg_value(ptr %29, !36244, !DIExpression(), !43882)
    #dbg_value(ptr %29, !36244, !DIExpression(), !43884)
  %30 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 72, !dbg !43885
    #dbg_value(%fmt.fmtFlags zeroinitializer, !36249, !DIExpression(), !43885)
    #dbg_value(ptr %29, !36244, !DIExpression(), !43886)
  %31 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 88, !dbg !43887
    #dbg_value(i64 0, !36250, !DIExpression(), !43887)
    #dbg_value(ptr %29, !36244, !DIExpression(), !43888)
    #dbg_value(i64 0, !36251, !DIExpression(), !43889)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %30, i8 0, i64 9, i1 false), !dbg !43885
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false), !dbg !43887
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43762, !DIExpression(), !43890)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43704, !DIExpression(), !43891)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43704, !DIExpression(), !43892)
    #dbg_value({ ptr, i64, i64 } poison, !43703, !DIExpression(), !43893)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43691, !DIExpression(), !43696)
    #dbg_value(ptr undef, !43682, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43696)
    #dbg_value(i64 1, !43682, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43696)
    #dbg_value(i64 1, !43682, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !43696)
    #dbg_value(i1 false, !43692, !DIExpression(), !43894)
    #dbg_value({ ptr, i64, i64 } poison, !43682, !DIExpression(), !43895)
    #dbg_value(i64 poison, !43693, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !43896)
    #dbg_value({ ptr, ptr } poison, !43694, !DIExpression(), !43897)
    #dbg_value({ ptr, ptr } poison, !43694, !DIExpression(), !43898)
    #dbg_value(i1 poison, !43695, !DIExpression(), !43899)
    #dbg_value(i64 poison, !43693, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !43900)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43691, !DIExpression(), !43901)
    #dbg_value({ ptr, ptr } poison, !43694, !DIExpression(), !43902)
  call fastcc void @"(*fmt.pp).printArg"(ptr nonnull dereferenceable_or_null(208) %typeassert.value.ptr.i.i.i, ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"main$pack"), !dbg !43903
    #dbg_value(i1 poison, !43695, !DIExpression(), !43904)
    #dbg_value(i1 poison, !43692, !DIExpression(), !43905)
    #dbg_value({ ptr, ptr } poison, !43702, !DIExpression(), !43906)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43704, !DIExpression(), !43907)
  %.unpack.i.i = load ptr, ptr %typeassert.value.ptr.i.i.i, align 8, !dbg !43908
  %.elt2.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 8, !dbg !43908
  %.unpack3.i.i = load i64, ptr %.elt2.i.i, align 8, !dbg !43908
  %.elt4.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 16, !dbg !43908
  %.unpack5.i.i = load i64, ptr %.elt4.i.i, align 8, !dbg !43908
  %32 = call fastcc { i64, { ptr, ptr } } @"(*os.File).Write"(ptr nonnull @"os$alloc.173", ptr %.unpack.i.i, i64 %.unpack3.i.i), !dbg !43909
    #dbg_value(i64 poison, !43705, !DIExpression(), !43910)
    #dbg_value({ ptr, ptr } poison, !43706, !DIExpression(), !43911)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43704, !DIExpression(), !43912)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43913, !DIExpression(), !43922)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43913, !DIExpression(), !43924)
  %.unpack15.i.i.i = load i64, ptr %.elt4.i.i, align 8, !dbg !43925
  %33 = icmp sgt i64 %.unpack15.i.i.i, 65536, !dbg !43926
  br i1 %33, label %store.next.i.i.i, label %slice.next39.i.i.i, !dbg !43927

store.next.i.i.i:                                 ; preds = %fmt.newPrinter.exit.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43913, !DIExpression(), !43928)
    #dbg_value({ ptr, i64, i64 } zeroinitializer, !43918, !DIExpression(), !43929)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %typeassert.value.ptr.i.i.i, i8 0, i64 16, i1 false), !dbg !43929
  br label %deref.next8.i.i.i, !dbg !43927

deref.next8.i.i.i:                                ; preds = %slice.next39.i.i.i, %store.next.i.i.i
  %storemerge.i.i.i = phi i64 [ %.unpack15.i.i.i, %slice.next39.i.i.i ], [ 0, %store.next.i.i.i ], !dbg !43927
  store i64 %storemerge.i.i.i, ptr %.elt4.i.i, align 8, !dbg !43927
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43913, !DIExpression(), !43930)
  %.elt29.i.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 200, !dbg !43931
  %.unpack30.i.i.i = load i64, ptr %.elt29.i.i.i, align 8, !dbg !43931
  %34 = icmp sgt i64 %.unpack30.i.i.i, 8, !dbg !43932
  br i1 %34, label %store.next13.i.i.i, label %store.next17.i.i.i, !dbg !43927

store.next13.i.i.i:                               ; preds = %deref.next8.i.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43913, !DIExpression(), !43933)
  %35 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 184, !dbg !43934
    #dbg_value({ ptr, i64, i64 } zeroinitializer, !43919, !DIExpression(), !43934)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false), !dbg !43934
  br label %store.next17.i.i.i, !dbg !43927

store.next17.i.i.i:                               ; preds = %store.next13.i.i.i, %deref.next8.i.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43913, !DIExpression(), !43935)
  %36 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 24, !dbg !43936
    #dbg_value({ ptr, ptr } zeroinitializer, !43920, !DIExpression(), !43936)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43913, !DIExpression(), !43937)
    #dbg_value(%reflect.Value zeroinitializer, !43921, !DIExpression(), !43938)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43913, !DIExpression(), !43939)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43913, !DIExpression(), !43940)
  %.repack39.i.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 192, !dbg !43941
  store i64 0, ptr %.repack39.i.i.i, align 8, !dbg !43941
    #dbg_value({ ptr, i64, i64 } poison, !43919, !DIExpression(), !43941)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43913, !DIExpression(), !43942)
    #dbg_value(ptr @fmt.ppFree, !43943, !DIExpression(), !43950)
    #dbg_value(ptr @"reflect/types.type:pointer:named:fmt.pp", !43948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43950)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43950)
    #dbg_value(ptr @fmt.ppFree, !43943, !DIExpression(), !43952)
    #dbg_value(ptr undef, !11104, !DIExpression(), !43953)
    #dbg_value(ptr undef, !11117, !DIExpression(), !43956)
    #dbg_value(ptr @fmt.ppFree, !17013, !DIExpression(), !43957)
    #dbg_value(ptr @fmt.ppFree, !17013, !DIExpression(), !43959)
    #dbg_value(ptr @fmt.ppFree, !17020, !DIExpression(), !43960)
    #dbg_value(i32 0, !17025, !DIExpression(), !43960)
    #dbg_value(i32 1, !17026, !DIExpression(), !43960)
    #dbg_value(ptr @fmt.ppFree, !17020, !DIExpression(), !43962)
    #dbg_value(i32 0, !17025, !DIExpression(), !43963)
    #dbg_value(i32 1, !17026, !DIExpression(), !43964)
    #dbg_value(ptr @fmt.ppFree, !17032, !DIExpression(), !43965)
    #dbg_value(i32 0, !17037, !DIExpression(), !43965)
    #dbg_value(i32 1, !17038, !DIExpression(), !43965)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %36, i8 0, i64 40, i1 false), !dbg !43936
  %37 = cmpxchg ptr @fmt.ppFree, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !43965
  %38 = extractvalue { i32, i1 } %37, 1, !dbg !43965
  br i1 %38, label %"(*internal/task.Mutex).Lock.exit.i.i10.i.i", label %for.loop.preheader.i.i.i6.i.i, !dbg !43967

for.loop.preheader.i.i.i6.i.i:                    ; preds = %store.next17.i.i.i
    #dbg_value(ptr @fmt.ppFree, !17013, !DIExpression(), !43968)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43969)
    #dbg_value(i32 2, !16972, !DIExpression(), !43969)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43971)
    #dbg_value(i32 2, !16972, !DIExpression(), !43972)
    #dbg_value(ptr @fmt.ppFree, !16977, !DIExpression(), !43973)
    #dbg_value(i32 2, !16983, !DIExpression(), !43973)
  %39 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !43973
  %.not4.i.i.i7.i.i = icmp eq i32 %39, 0, !dbg !43975
  br i1 %.not4.i.i.i7.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i10.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i", !dbg !43967

"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i":   ; preds = %for.loop.preheader.i.i.i6.i.i, %"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i"
    #dbg_value(ptr @fmt.ppFree, !17013, !DIExpression(), !43976)
    #dbg_value(ptr @fmt.ppFree, !17051, !DIExpression(), !43977)
    #dbg_value(i32 2, !17056, !DIExpression(), !43979)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree, i32 2) #27, !dbg !43980
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !43971)
    #dbg_value(i32 2, !16972, !DIExpression(), !43972)
    #dbg_value(ptr @fmt.ppFree, !16977, !DIExpression(), !43973)
    #dbg_value(i32 2, !16983, !DIExpression(), !43973)
  %40 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !43973
  %.not.i.i.i9.i.i = icmp eq i32 %40, 0, !dbg !43975
  br i1 %.not.i.i.i9.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i10.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i", !dbg !43967

"(*internal/task.Mutex).Lock.exit.i.i10.i.i":     ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i", %for.loop.preheader.i.i.i6.i.i, %store.next17.i.i.i
    #dbg_value(ptr @fmt.ppFree, !43943, !DIExpression(), !43981)
    #dbg_value(ptr @fmt.ppFree, !43943, !DIExpression(), !43982)
  %.unpack.i.i11.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !43983
  %.unpack2.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !43983
  %.unpack3.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !43983
    #dbg_value({ ptr, ptr } poison, !43948, !DIExpression(), !43984)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11116, !DIExpression(), !43956)
    #dbg_value(ptr undef, !11117, !DIExpression(), !43956)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11118, !DIExpression(), !43956)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11119, !DIExpression(), !43956)
    #dbg_value(i64 1, !11120, !DIExpression(), !43956)
    #dbg_value(i64 16, !11121, !DIExpression(), !43956)
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11122, !DIExpression(), !43956)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11118, !DIExpression(), !43985)
    #dbg_value(i64 1, !11120, !DIExpression(), !43986)
  %41 = add i64 %.unpack2.i.i.i.i, 1, !dbg !43987
    #dbg_value(i64 %41, !11123, !DIExpression(), !43988)
    #dbg_value(i64 1, !11120, !DIExpression(), !43989)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11116, !DIExpression(), !43990)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11118, !DIExpression(), !43991)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11119, !DIExpression(), !43992)
    #dbg_value(i64 %41, !11123, !DIExpression(), !43993)
    #dbg_value(i64 16, !11121, !DIExpression(), !43994)
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11122, !DIExpression(), !43995)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11142, !DIExpression(), !43996)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11147, !DIExpression(), !43996)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11148, !DIExpression(), !43996)
    #dbg_value(i64 %41, !11149, !DIExpression(), !43996)
    #dbg_value(i64 16, !11150, !DIExpression(), !43996)
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11151, !DIExpression(), !43996)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11148, !DIExpression(), !43998)
    #dbg_value(i64 %41, !11149, !DIExpression(), !43999)
  %.not.i.i.i.i.i.i = icmp ult i64 %.unpack3.i.i.i.i, %41, !dbg !44000
  br i1 %.not.i.i.i.i.i.i, label %shift.next.i.i.i.i.i.i, label %runtime.sliceAppend.exit.i.i.i.i, !dbg !44001

shift.next.i.i.i.i.i.i:                           ; preds = %"(*internal/task.Mutex).Lock.exit.i.i10.i.i"
    #dbg_value(i64 %41, !11149, !DIExpression(), !44002)
    #dbg_value(i64 %41, !11160, !DIExpression(), !44003)
  %42 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %41, i1 true), !dbg !44003
  %43 = sub nuw nsw i64 64, %42, !dbg !44003
  %shift.overflow.i.i.i.i.i.i = icmp eq i64 %42, 0, !dbg !44005
  %44 = shl nuw i64 1, %43, !dbg !44005
  %shift.result.i.i.i.i.i.i = select i1 %shift.overflow.i.i.i.i.i.i, i64 0, i64 %44, !dbg !44005
    #dbg_value(i64 %shift.result.i.i.i.i.i.i, !11149, !DIExpression(), !44006)
    #dbg_value(i64 %shift.result.i.i.i.i.i.i, !11149, !DIExpression(), !44007)
    #dbg_value(i64 16, !11150, !DIExpression(), !44008)
  %45 = shl i64 %shift.result.i.i.i.i.i.i, 4, !dbg !44009
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11151, !DIExpression(), !44010)
  %46 = call fastcc ptr @runtime.alloc(i64 %45, ptr nonnull inttoptr (i64 389 to ptr)), !dbg !44011
    #dbg_value(ptr %46, !11152, !DIExpression(), !44012)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11147, !DIExpression(), !44013)
  %.not1.i.i.i.i.i.i = icmp eq i64 %.unpack2.i.i.i.i, 0, !dbg !44014
  br i1 %.not1.i.i.i.i.i.i, label %runtime.sliceAppend.exit.i.i.i.i, label %if.then1.i.i.i.i.i.i, !dbg !44001

if.then1.i.i.i.i.i.i:                             ; preds = %shift.next.i.i.i.i.i.i
    #dbg_value(ptr %46, !11152, !DIExpression(), !44015)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11142, !DIExpression(), !44016)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11147, !DIExpression(), !44017)
    #dbg_value(i64 16, !11150, !DIExpression(), !44018)
  %47 = shl i64 %.unpack2.i.i.i.i, 4, !dbg !44019
    #dbg_value(ptr %46, !11107, !DIExpression(), !44020)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11104, !DIExpression(), !44020)
    #dbg_value(i64 %47, !11108, !DIExpression(), !44020)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr readonly align 1 %.unpack.i.i11.i.i, i64 %47, i1 false), !dbg !44020
  br label %runtime.sliceAppend.exit.i.i.i.i, !dbg !44001

runtime.sliceAppend.exit.i.i.i.i:                 ; preds = %if.then1.i.i.i.i.i.i, %shift.next.i.i.i.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i10.i.i"
  %oldBuf.pn.i.i.i.i.i.i = phi ptr [ %.unpack.i.i11.i.i, %"(*internal/task.Mutex).Lock.exit.i.i10.i.i" ], [ %46, %if.then1.i.i.i.i.i.i ], [ %46, %shift.next.i.i.i.i.i.i ]
  %oldCap.pn.i.i.i.i.i.i = phi i64 [ %.unpack3.i.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i10.i.i" ], [ %shift.result.i.i.i.i.i.i, %if.then1.i.i.i.i.i.i ], [ %shift.result.i.i.i.i.i.i, %shift.next.i.i.i.i.i.i ]
    #dbg_value(ptr %oldBuf.pn.i.i.i.i.i.i, !11116, !DIExpression(), !44022)
    #dbg_value(i64 %oldCap.pn.i.i.i.i.i.i, !11119, !DIExpression(), !44023)
    #dbg_value(ptr %oldBuf.pn.i.i.i.i.i.i, !11116, !DIExpression(), !44024)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11118, !DIExpression(), !44025)
    #dbg_value(i64 16, !11121, !DIExpression(), !44026)
  %48 = shl i64 %.unpack2.i.i.i.i, 4, !dbg !44027
  %49 = getelementptr i8, ptr %oldBuf.pn.i.i.i.i.i.i, i64 %48, !dbg !44028
    #dbg_value(ptr undef, !11117, !DIExpression(), !44029)
    #dbg_value(i64 1, !11120, !DIExpression(), !44030)
    #dbg_value(i64 16, !11121, !DIExpression(), !44031)
    #dbg_value(ptr %49, !11107, !DIExpression(), !43953)
    #dbg_value(ptr undef, !11104, !DIExpression(), !43953)
    #dbg_value(i64 16, !11108, !DIExpression(), !43953)
  store ptr @"reflect/types.type:pointer:named:fmt.pp", ptr %49, align 1, !dbg !43953
  %stackalloc.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %49, i64 8, !dbg !43953
  store ptr %typeassert.value.ptr.i.i.i, ptr %stackalloc.sroa.10.0..sroa_idx.i.i.i.i, align 1, !dbg !43953
    #dbg_value(ptr %oldBuf.pn.i.i.i.i.i.i, !11116, !DIExpression(), !44032)
    #dbg_value(i64 %41, !11123, !DIExpression(), !44033)
    #dbg_value(i64 %oldCap.pn.i.i.i.i.i.i, !11119, !DIExpression(), !44034)
  store ptr %oldBuf.pn.i.i.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !44035
  store i64 %41, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !44035
  store i64 %oldCap.pn.i.i.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !44035
    #dbg_value({ ptr, i64, i64 } poison, !43949, !DIExpression(), !44035)
    #dbg_value(ptr @fmt.ppFree, !43943, !DIExpression(), !44036)
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !44037)
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !44039)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !44040)
    #dbg_value(i32 0, !16972, !DIExpression(), !44040)
    #dbg_value(ptr @fmt.ppFree, !16965, !DIExpression(), !44042)
    #dbg_value(i32 0, !16972, !DIExpression(), !44043)
    #dbg_value(ptr @fmt.ppFree, !16977, !DIExpression(), !44044)
    #dbg_value(i32 0, !16983, !DIExpression(), !44044)
  %50 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !44044
    #dbg_value(i32 %50, !16961, !DIExpression(), !44046)
    #dbg_value(i32 %50, !16961, !DIExpression(), !44047)
  switch i32 %50, label %common.ret [
    i32 0, label %if.then.i.i.i13.i.i
    i32 2, label %gep.next5.i.i.i12.i.i
  ], !dbg !44048

if.then.i.i.i13.i.i:                              ; preds = %runtime.sliceAppend.exit.i.i.i.i
  call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !44049
  unreachable, !dbg !44049

gep.next5.i.i.i12.i.i:                            ; preds = %runtime.sliceAppend.exit.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !16960, !DIExpression(), !44050)
    #dbg_value(ptr @fmt.ppFree, !16991, !DIExpression(), !44051)
    #dbg_value(ptr @fmt.ppFree, !16991, !DIExpression(), !44053)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !44054
  br label %common.ret, !dbg !44048

slice.next39.i.i.i:                               ; preds = %fmt.newPrinter.exit.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43913, !DIExpression(), !44055)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !43913, !DIExpression(), !44056)
  store i64 0, ptr %.elt2.i.i, align 8, !dbg !44057
    #dbg_value({ ptr, i64, i64 } poison, !43918, !DIExpression(), !44057)
  br label %deref.next8.i.i.i, !dbg !43927

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !43721
  unreachable, !dbg !43721
}
