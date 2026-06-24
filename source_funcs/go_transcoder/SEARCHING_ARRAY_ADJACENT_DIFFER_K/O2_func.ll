define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x, i64 %k) local_unnamed_addr #0 !dbg !37730 {
entry:
    #dbg_value(ptr %arr.data, !37734, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37739)
    #dbg_value(i64 %arr.len, !37734, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37739)
    #dbg_value(i64 %arr.cap, !37734, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !37739)
    #dbg_value(i64 %n, !37735, !DIExpression(), !37739)
    #dbg_value(i64 %x, !37736, !DIExpression(), !37739)
    #dbg_value(i64 %k, !37737, !DIExpression(), !37739)
    #dbg_value(i64 0, !37738, !DIExpression(), !37740)
    #dbg_value(ptr undef, !37741, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37755)
    #dbg_value(ptr undef, !37762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37773)
    #dbg_value(ptr undef, !37771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37774)
  %0 = icmp sgt i64 %n, 0, !dbg !37775
  br i1 %0, label %for.body.lr.ph, label %for.done, !dbg !37776

for.body.lr.ph:                                   ; preds = %entry
  %1 = sitofp i64 %k to double
  br label %for.body, !dbg !37776

for.body:                                         ; preds = %for.body.lr.ph, %lookup.next4
  %2 = phi i64 [ 0, %for.body.lr.ph ], [ %11, %lookup.next4 ]
    #dbg_value({ ptr, i64, i64 } poison, !37734, !DIExpression(), !37777)
    #dbg_value(i64 %2, !37738, !DIExpression(), !37778)
  %.not = icmp ult i64 %2, %arr.len, !dbg !37779
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !37779

lookup.next:                                      ; preds = %for.body
  %3 = getelementptr inbounds i64, ptr %arr.data, i64 %2, !dbg !37779
  %4 = load i64, ptr %3, align 8, !dbg !37779
    #dbg_value(i64 %x, !37736, !DIExpression(), !37780)
  %5 = icmp eq i64 %4, %x, !dbg !37781
  br i1 %5, label %common.ret, label %lookup.next4, !dbg !37776

common.ret:                                       ; preds = %lookup.next, %gep.next5.i.i.i12.i.i, %runtime.sliceAppend.exit.i.i.i.i
  %common.ret.op = phi i64 [ -1, %runtime.sliceAppend.exit.i.i.i.i ], [ -1, %gep.next5.i.i.i12.i.i ], [ %2, %lookup.next ]
  ret i64 %common.ret.op, !dbg !37776

lookup.next4:                                     ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } poison, !37734, !DIExpression(), !37782)
    #dbg_value(i64 %2, !37738, !DIExpression(), !37783)
    #dbg_value(i64 %x, !37736, !DIExpression(), !37784)
  %6 = sub i64 %4, %x, !dbg !37785
  %7 = sitofp i64 %6 to double, !dbg !37786
    #dbg_value(double %7, !37787, !DIExpression(), !37791)
  %8 = tail call double @llvm.fabs.f64(double %7), !dbg !37793
    #dbg_value(i64 %k, !37737, !DIExpression(), !37794)
  %9 = fdiv double %8, %1, !dbg !37795
  %abovemin = fcmp oge double %9, 0xC3E0000000000000, !dbg !37796
  %belowmax = fcmp ole double %9, 0x43DFFFFFFFFFFFFE, !dbg !37796
  %inbounds = and i1 %abovemin, %belowmax, !dbg !37796
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !37796
  %isnan = fcmp uno double %9, 0.000000e+00, !dbg !37796
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !37796
  %normal = fptosi double %9 to i64, !dbg !37796
  %10 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !37796
    #dbg_value(i64 1, !37797, !DIExpression(), !37801)
    #dbg_value(i64 %10, !37800, !DIExpression(), !37803)
  %.y.i = tail call range(i64 1, -9223372036854775808) i64 @llvm.smax.i64(i64 %10, i64 1), !dbg !37804
  %11 = add i64 %.y.i, %2, !dbg !37805
    #dbg_value(i64 %11, !37738, !DIExpression(), !37806)
    #dbg_value(i64 %n, !37735, !DIExpression(), !37807)
  %12 = icmp slt i64 %11, %n, !dbg !37775
  br i1 %12, label %for.body, label %for.done, !dbg !37776

for.done:                                         ; preds = %lookup.next4, %entry
    #dbg_value(ptr undef, !37771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37774)
    #dbg_value(i64 1, !37771, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37774)
    #dbg_value(i64 1, !37771, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !37774)
    #dbg_value({ ptr, i64, i64 } poison, !37771, !DIExpression(), !37808)
    #dbg_value(ptr @"reflect/types.type:pointer:named:os.File", !37761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37773)
    #dbg_value(ptr @"os$alloc.173", !37761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37773)
    #dbg_value(ptr undef, !37762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37773)
    #dbg_value(i64 1, !37762, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37773)
    #dbg_value(i64 1, !37762, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !37773)
    #dbg_value(ptr @fmt.ppFree, !37809, !DIExpression(), !37817)
    #dbg_value(ptr @fmt.ppFree, !15650, !DIExpression(), !37826)
    #dbg_value(ptr @fmt.ppFree, !15656, !DIExpression(), !37828)
    #dbg_value(i32 0, !15661, !DIExpression(), !37830)
    #dbg_value(i32 1, !15662, !DIExpression(), !37831)
    #dbg_value(ptr @fmt.ppFree, !15667, !DIExpression(), !37832)
    #dbg_value(i32 0, !15672, !DIExpression(), !37832)
    #dbg_value(i32 1, !15673, !DIExpression(), !37832)
  %13 = cmpxchg ptr @fmt.ppFree, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !37832
  %14 = extractvalue { i32, i1 } %13, 1, !dbg !37832
  br i1 %14, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i.i.i", !dbg !37834

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i.i.i": ; preds = %for.done
    #dbg_value(ptr @fmt.ppFree, !15650, !DIExpression(), !37835)
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !37836)
    #dbg_value(i32 2, !15612, !DIExpression(), !37838)
    #dbg_value(ptr @fmt.ppFree, !15616, !DIExpression(), !37839)
    #dbg_value(i32 2, !15622, !DIExpression(), !37839)
  %15 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !37839
  %.not4.i.i.i.i.i = icmp eq i32 %15, 0, !dbg !37841
  br i1 %.not4.i.i.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", !dbg !37834

"(*internal/futex.Futex).Wait.exit.i.i.i.i.i":    ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i.i.i", %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !15650, !DIExpression(), !37842)
    #dbg_value(ptr @fmt.ppFree, !15685, !DIExpression(), !37843)
    #dbg_value(i32 2, !15690, !DIExpression(), !37845)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree, i32 2) #27, !dbg !37846
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !37836)
    #dbg_value(i32 2, !15612, !DIExpression(), !37838)
    #dbg_value(ptr @fmt.ppFree, !15616, !DIExpression(), !37839)
    #dbg_value(i32 2, !15622, !DIExpression(), !37839)
  %16 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !37839
  %.not.i.i.i.i.i = icmp eq i32 %16, 0, !dbg !37841
  br i1 %.not.i.i.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", !dbg !37834

"(*internal/task.Mutex).Lock.exit.i.i.i.i":       ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i.i.i", %for.done
    #dbg_value(ptr @fmt.ppFree, !37809, !DIExpression(), !37847)
  %.unpack12.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !37848
  %17 = icmp sgt i64 %.unpack12.i.i.i.i, 0, !dbg !37849
  br i1 %17, label %deref.next8.i.i.i.i, label %gep.next28.i.i.i.i, !dbg !37850

deref.next8.i.i.i.i:                              ; preds = %"(*internal/task.Mutex).Lock.exit.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !37809, !DIExpression(), !37851)
  %18 = add nsw i64 %.unpack12.i.i.i.i, -1, !dbg !37852
    #dbg_value({ ptr, ptr } poison, !37815, !DIExpression(), !37853)
  %.unpack27.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !37854
  %slice.highmax.i.i.i.i = icmp ugt i64 %18, %.unpack27.i.i.i.i, !dbg !37855
  br i1 %slice.highmax.i.i.i.i, label %slice.throw.i.i.i.i, label %store.next.i.i.i.i, !dbg !37855

store.next.i.i.i.i:                               ; preds = %deref.next8.i.i.i.i
  %.unpack16.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !37856
  %19 = getelementptr inbounds nuw { ptr, ptr }, ptr %.unpack16.i.i.i.i, i64 %18, !dbg !37857
  %.elt23.i.i.i.i = getelementptr inbounds nuw i8, ptr %19, i64 8, !dbg !37857
  %.unpack24.i.i.i.i = load ptr, ptr %.elt23.i.i.i.i, align 8, !dbg !37857
  %.unpack22.i.i.i.i = load ptr, ptr %19, align 8, !dbg !37857
  store i64 %18, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !37858
    #dbg_value({ ptr, i64, i64 } poison, !37816, !DIExpression(), !37858)
    #dbg_value(ptr @fmt.ppFree, !37809, !DIExpression(), !37859)
  %20 = insertvalue { ptr, ptr } poison, ptr %.unpack22.i.i.i.i, 0, !dbg !37857
  %21 = insertvalue { ptr, ptr } %20, ptr %.unpack24.i.i.i.i, 1, !dbg !37857
    #dbg_value({ ptr, ptr } %21, !37815, !DIExpression(), !37853)
    #dbg_value(ptr @fmt.ppFree, !15601, !DIExpression(), !37860)
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !37862)
    #dbg_value(i32 0, !15612, !DIExpression(), !37864)
    #dbg_value(ptr @fmt.ppFree, !15616, !DIExpression(), !37865)
    #dbg_value(i32 0, !15622, !DIExpression(), !37865)
  %22 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !37865
    #dbg_value(i32 %22, !15602, !DIExpression(), !37867)
  switch i32 %22, label %"(*sync.Pool).Get.exit.i.i.i" [
    i32 0, label %if.then.i.i.i.i.i
    i32 2, label %gep.next5.i.i.i.i.i
  ], !dbg !37868

if.then.i.i.i.i.i:                                ; preds = %store.next.i.i.i.i
  tail call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !37869
  unreachable, !dbg !37869

gep.next5.i.i.i.i.i:                              ; preds = %store.next.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !15601, !DIExpression(), !37870)
    #dbg_value(ptr @fmt.ppFree, !15629, !DIExpression(), !37871)
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !37873
  br label %"(*sync.Pool).Get.exit.i.i.i", !dbg !37868

gep.next28.i.i.i.i:                               ; preds = %"(*internal/task.Mutex).Lock.exit.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !37809, !DIExpression(), !37874)
    #dbg_value(ptr @fmt.ppFree, !15601, !DIExpression(), !37875)
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !37877)
    #dbg_value(i32 0, !15612, !DIExpression(), !37879)
    #dbg_value(ptr @fmt.ppFree, !15616, !DIExpression(), !37880)
    #dbg_value(i32 0, !15622, !DIExpression(), !37880)
  %23 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !37880
    #dbg_value(i32 %23, !15602, !DIExpression(), !37882)
  switch i32 %23, label %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i" [
    i32 0, label %if.then.i35.i.i.i.i
    i32 2, label %gep.next5.i34.i.i.i.i
  ], !dbg !37883

if.then.i35.i.i.i.i:                              ; preds = %gep.next28.i.i.i.i
  tail call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !37884
  unreachable, !dbg !37884

gep.next5.i34.i.i.i.i:                            ; preds = %gep.next28.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !15601, !DIExpression(), !37885)
    #dbg_value(ptr @fmt.ppFree, !15629, !DIExpression(), !37886)
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !37888
  br label %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i", !dbg !37883

"(*internal/task.Mutex).Unlock.exit36.i.i.i.i":   ; preds = %gep.next5.i34.i.i.i.i, %gep.next28.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !37809, !DIExpression(), !37889)
  %.unpack14.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 16), align 8, !dbg !37890
  %24 = icmp eq ptr %.unpack14.i.i.i.i, null, !dbg !37891
  br i1 %24, label %"(*sync.Pool).Get.exit.i.i.i", label %fpcall.next.i.i.i.i, !dbg !37850

fpcall.next.i.i.i.i:                              ; preds = %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !37809, !DIExpression(), !37892)
  %.unpack.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 8), align 8, !dbg !37893
  %25 = tail call { ptr, ptr } %.unpack14.i.i.i.i(ptr %.unpack.i.i.i.i) #27, !dbg !37894
  br label %"(*sync.Pool).Get.exit.i.i.i", !dbg !37895

slice.throw.i.i.i.i:                              ; preds = %deref.next8.i.i.i.i
  tail call fastcc void @runtime.slicePanic(), !dbg !37855
  unreachable, !dbg !37855

"(*sync.Pool).Get.exit.i.i.i":                    ; preds = %fpcall.next.i.i.i.i, %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i", %gep.next5.i.i.i.i.i, %store.next.i.i.i.i
  %common.ret.op.i.i.i.i = phi { ptr, ptr } [ %25, %fpcall.next.i.i.i.i ], [ zeroinitializer, %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i" ], [ %21, %store.next.i.i.i.i ], [ %21, %gep.next5.i.i.i.i.i ]
  %interface.type.i.i.i = extractvalue { ptr, ptr } %common.ret.op.i.i.i.i, 0, !dbg !37896
  %typeassert.ok3.i.i.i = icmp eq ptr %interface.type.i.i.i, @"reflect/types.type:pointer:named:fmt.pp", !dbg !37896
  %typeassert.value.ptr.i.i.i = extractvalue { ptr, ptr } %common.ret.op.i.i.i.i, 1
    #dbg_value(i1 %typeassert.ok3.i.i.i, !27889, !DIExpression(), !37897)
  br i1 %typeassert.ok3.i.i.i, label %runtime.interfaceTypeAssert.exit.i.i.i, label %if.then.i.i.i.i, !dbg !37899

if.then.i.i.i.i:                                  ; preds = %"(*sync.Pool).Get.exit.i.i.i"
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"runtime$string.11", i64 18), !dbg !37900
  unreachable, !dbg !37899

runtime.interfaceTypeAssert.exit.i.i.i:           ; preds = %"(*sync.Pool).Get.exit.i.i.i"
    #dbg_value(ptr poison, !37821, !DIExpression(), !37901)
  %.not.i.i.i = icmp eq ptr %typeassert.value.ptr.i.i.i, null, !dbg !37902
  br i1 %.not.i.i.i, label %gep.throw.i.i.i, label %fmt.newPrinter.exit.i.i, !dbg !37902

gep.throw.i.i.i:                                  ; preds = %runtime.interfaceTypeAssert.exit.i.i.i
  tail call fastcc void @runtime.nilPanic(), !dbg !37902
  unreachable, !dbg !37902

fmt.newPrinter.exit.i.i:                          ; preds = %runtime.interfaceTypeAssert.exit.i.i.i
  %26 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 178, !dbg !37902
  store i1 false, ptr %26, align 1, !dbg !37902
    #dbg_value(i1 false, !37822, !DIExpression(), !37902)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37821, !DIExpression(), !37903)
  %27 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 179, !dbg !37904
  store i1 false, ptr %27, align 1, !dbg !37904
    #dbg_value(i1 false, !37823, !DIExpression(), !37904)
  %28 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 180, !dbg !37905
  store i1 false, ptr %28, align 1, !dbg !37905
    #dbg_value(i1 false, !37824, !DIExpression(), !37905)
  %29 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 64, !dbg !37906
    #dbg_value(ptr %29, !37907, !DIExpression(), !37914)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37912, !DIExpression(), !37916)
  store ptr %typeassert.value.ptr.i.i.i, ptr %29, align 8, !dbg !37917
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37913, !DIExpression(), !37917)
    #dbg_value(ptr %29, !30300, !DIExpression(), !37918)
  %30 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 72, !dbg !37920
    #dbg_value(%fmt.fmtFlags zeroinitializer, !30305, !DIExpression(), !37920)
  %31 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 88, !dbg !37921
    #dbg_value(i64 0, !30306, !DIExpression(), !37921)
    #dbg_value(i64 0, !30307, !DIExpression(), !37922)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %30, i8 0, i64 9, i1 false), !dbg !37920
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false), !dbg !37921
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37763, !DIExpression(), !37923)
    #dbg_value({ ptr, i64, i64 } poison, !37762, !DIExpression(), !37924)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37750, !DIExpression(), !37755)
    #dbg_value(ptr undef, !37741, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37755)
    #dbg_value(i64 1, !37741, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37755)
    #dbg_value(i64 1, !37741, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !37755)
    #dbg_value(i1 false, !37751, !DIExpression(), !37925)
    #dbg_value({ ptr, i64, i64 } poison, !37741, !DIExpression(), !37926)
    #dbg_value(i1 poison, !37754, !DIExpression(), !37927)
    #dbg_value(i64 poison, !37752, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !37928)
    #dbg_value({ ptr, ptr } poison, !37753, !DIExpression(), !37929)
  tail call fastcc void @"(*fmt.pp).printArg"(ptr nonnull dereferenceable_or_null(208) %typeassert.value.ptr.i.i.i, ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"main$pack"), !dbg !37930
    #dbg_value(i1 poison, !37751, !DIExpression(), !37931)
    #dbg_value({ ptr, ptr } poison, !37761, !DIExpression(), !37932)
  %.unpack.i.i = load ptr, ptr %typeassert.value.ptr.i.i.i, align 8, !dbg !37933
  %.elt2.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 8, !dbg !37933
  %.unpack3.i.i = load i64, ptr %.elt2.i.i, align 8, !dbg !37933
  %.elt4.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 16, !dbg !37933
  %.unpack5.i.i = load i64, ptr %.elt4.i.i, align 8, !dbg !37933
  %32 = tail call fastcc { i64, { ptr, ptr } } @"(*os.File).Write"(ptr nonnull @"os$alloc.173", ptr %.unpack.i.i, i64 %.unpack3.i.i), !dbg !37934
    #dbg_value(i64 poison, !37764, !DIExpression(), !37935)
    #dbg_value({ ptr, ptr } poison, !37765, !DIExpression(), !37936)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37937, !DIExpression(), !37946)
  %.unpack15.i.i.i = load i64, ptr %.elt4.i.i, align 8, !dbg !37948
  %33 = icmp sgt i64 %.unpack15.i.i.i, 65536, !dbg !37949
  br i1 %33, label %store.next.i.i.i, label %deref.next8.i.i.i, !dbg !37950

store.next.i.i.i:                                 ; preds = %fmt.newPrinter.exit.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37937, !DIExpression(), !37951)
  store ptr null, ptr %typeassert.value.ptr.i.i.i, align 8, !dbg !37952
    #dbg_value({ ptr, i64, i64 } zeroinitializer, !37942, !DIExpression(), !37952)
  br label %deref.next8.i.i.i, !dbg !37950

deref.next8.i.i.i:                                ; preds = %store.next.i.i.i, %fmt.newPrinter.exit.i.i
  %storemerge.i.i.i = phi i64 [ 0, %store.next.i.i.i ], [ %.unpack15.i.i.i, %fmt.newPrinter.exit.i.i ], !dbg !37950
  store i64 0, ptr %.elt2.i.i, align 8, !dbg !37950
  store i64 %storemerge.i.i.i, ptr %.elt4.i.i, align 8, !dbg !37950
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37937, !DIExpression(), !37953)
  %.elt29.i.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 200, !dbg !37954
  %.unpack30.i.i.i = load i64, ptr %.elt29.i.i.i, align 8, !dbg !37954
  %34 = icmp sgt i64 %.unpack30.i.i.i, 8, !dbg !37955
  br i1 %34, label %store.next13.i.i.i, label %store.next17.i.i.i, !dbg !37950

store.next13.i.i.i:                               ; preds = %deref.next8.i.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37937, !DIExpression(), !37956)
  %35 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 184, !dbg !37957
    #dbg_value({ ptr, i64, i64 } zeroinitializer, !37943, !DIExpression(), !37957)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false), !dbg !37957
  br label %store.next17.i.i.i, !dbg !37950

store.next17.i.i.i:                               ; preds = %store.next13.i.i.i, %deref.next8.i.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37937, !DIExpression(), !37958)
  %36 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 24, !dbg !37959
    #dbg_value({ ptr, ptr } zeroinitializer, !37944, !DIExpression(), !37959)
    #dbg_value(%reflect.Value zeroinitializer, !37945, !DIExpression(), !37960)
  %.repack39.i.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 192, !dbg !37961
  store i64 0, ptr %.repack39.i.i.i, align 8, !dbg !37961
    #dbg_value({ ptr, i64, i64 } poison, !37943, !DIExpression(), !37961)
    #dbg_value(ptr @"reflect/types.type:pointer:named:fmt.pp", !37962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37969)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37969)
    #dbg_value(ptr @fmt.ppFree, !37967, !DIExpression(), !37971)
    #dbg_value(ptr undef, !11083, !DIExpression(), !37972)
    #dbg_value(ptr undef, !11096, !DIExpression(), !37975)
    #dbg_value(ptr @fmt.ppFree, !15650, !DIExpression(), !37976)
    #dbg_value(ptr @fmt.ppFree, !15656, !DIExpression(), !37978)
    #dbg_value(i32 0, !15661, !DIExpression(), !37980)
    #dbg_value(i32 1, !15662, !DIExpression(), !37981)
    #dbg_value(ptr @fmt.ppFree, !15667, !DIExpression(), !37982)
    #dbg_value(i32 0, !15672, !DIExpression(), !37982)
    #dbg_value(i32 1, !15673, !DIExpression(), !37982)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %36, i8 0, i64 40, i1 false), !dbg !37959
  %37 = cmpxchg ptr @fmt.ppFree, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !37982
  %38 = extractvalue { i32, i1 } %37, 1, !dbg !37982
  br i1 %38, label %"(*internal/task.Mutex).Lock.exit.i.i10.i.i", label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i6.i.i", !dbg !37984

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i6.i.i": ; preds = %store.next17.i.i.i
    #dbg_value(ptr @fmt.ppFree, !15650, !DIExpression(), !37985)
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !37986)
    #dbg_value(i32 2, !15612, !DIExpression(), !37988)
    #dbg_value(ptr @fmt.ppFree, !15616, !DIExpression(), !37989)
    #dbg_value(i32 2, !15622, !DIExpression(), !37989)
  %39 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !37989
  %.not4.i.i.i7.i.i = icmp eq i32 %39, 0, !dbg !37991
  br i1 %.not4.i.i.i7.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i10.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i", !dbg !37984

"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i":   ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i6.i.i", %"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i"
    #dbg_value(ptr @fmt.ppFree, !15650, !DIExpression(), !37992)
    #dbg_value(ptr @fmt.ppFree, !15685, !DIExpression(), !37993)
    #dbg_value(i32 2, !15690, !DIExpression(), !37995)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree, i32 2) #27, !dbg !37996
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !37986)
    #dbg_value(i32 2, !15612, !DIExpression(), !37988)
    #dbg_value(ptr @fmt.ppFree, !15616, !DIExpression(), !37989)
    #dbg_value(i32 2, !15622, !DIExpression(), !37989)
  %40 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !37989
  %.not.i.i.i9.i.i = icmp eq i32 %40, 0, !dbg !37991
  br i1 %.not.i.i.i9.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i10.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i", !dbg !37984

"(*internal/task.Mutex).Lock.exit.i.i10.i.i":     ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i", %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i6.i.i", %store.next17.i.i.i
    #dbg_value(ptr @fmt.ppFree, !37967, !DIExpression(), !37997)
  %.unpack.i.i11.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !37998
  %.unpack2.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !37998
  %.unpack3.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !37998
    #dbg_value({ ptr, ptr } poison, !37962, !DIExpression(), !37999)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11095, !DIExpression(), !37975)
    #dbg_value(ptr undef, !11096, !DIExpression(), !37975)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11098, !DIExpression(), !37975)
    #dbg_value(i64 16, !11100, !DIExpression(), !37975)
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11101, !DIExpression(), !37975)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11097, !DIExpression(), !38000)
    #dbg_value(i64 1, !11099, !DIExpression(), !38001)
  %41 = add i64 %.unpack2.i.i.i.i, 1, !dbg !38002
    #dbg_value(i64 %41, !11102, !DIExpression(), !38003)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11121, !DIExpression(), !38004)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11126, !DIExpression(), !38004)
    #dbg_value(i64 16, !11129, !DIExpression(), !38004)
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11130, !DIExpression(), !38004)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11127, !DIExpression(), !38006)
    #dbg_value(i64 %41, !11128, !DIExpression(), !38007)
  %.not.i.i.i.i.i.i = icmp ult i64 %.unpack3.i.i.i.i, %41, !dbg !38008
  br i1 %.not.i.i.i.i.i.i, label %shift.next.i.i.i.i.i.i, label %runtime.sliceAppend.exit.i.i.i.i, !dbg !38009

shift.next.i.i.i.i.i.i:                           ; preds = %"(*internal/task.Mutex).Lock.exit.i.i10.i.i"
    #dbg_value(i64 %41, !11128, !DIExpression(), !38010)
    #dbg_value(i64 %41, !11139, !DIExpression(), !38011)
  %42 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %41, i1 true), !dbg !38011
  %43 = sub nuw nsw i64 64, %42, !dbg !38011
  %shift.overflow.i.i.i.i.i.i = icmp eq i64 %42, 0, !dbg !38013
  %44 = shl nuw i64 1, %43, !dbg !38013
  %shift.result.i.i.i.i.i.i = select i1 %shift.overflow.i.i.i.i.i.i, i64 0, i64 %44, !dbg !38013
    #dbg_value(i64 %shift.result.i.i.i.i.i.i, !11128, !DIExpression(), !38014)
    #dbg_value(i64 16, !11129, !DIExpression(), !38015)
  %45 = shl i64 %shift.result.i.i.i.i.i.i, 4, !dbg !38016
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11130, !DIExpression(), !38017)
  %46 = tail call fastcc ptr @runtime.alloc(i64 %45, ptr nonnull inttoptr (i64 389 to ptr)), !dbg !38018
    #dbg_value(ptr %46, !11131, !DIExpression(), !38019)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11126, !DIExpression(), !38020)
  %.not1.i.i.i.i.i.i = icmp eq i64 %.unpack2.i.i.i.i, 0, !dbg !38021
  br i1 %.not1.i.i.i.i.i.i, label %runtime.sliceAppend.exit.i.i.i.i, label %if.then1.i.i.i.i.i.i, !dbg !38009

if.then1.i.i.i.i.i.i:                             ; preds = %shift.next.i.i.i.i.i.i
    #dbg_value(ptr %46, !11131, !DIExpression(), !38022)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11121, !DIExpression(), !38023)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11126, !DIExpression(), !38024)
    #dbg_value(i64 16, !11129, !DIExpression(), !38025)
  %47 = shl i64 %.unpack2.i.i.i.i, 4, !dbg !38026
    #dbg_value(ptr %46, !11086, !DIExpression(), !38027)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11083, !DIExpression(), !38027)
    #dbg_value(i64 %47, !11087, !DIExpression(), !38027)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr readonly align 1 %.unpack.i.i11.i.i, i64 %47, i1 false), !dbg !38027
  br label %runtime.sliceAppend.exit.i.i.i.i, !dbg !38009

runtime.sliceAppend.exit.i.i.i.i:                 ; preds = %if.then1.i.i.i.i.i.i, %shift.next.i.i.i.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i10.i.i"
  %oldBuf.pn.i.i.i.i.i.i = phi ptr [ %.unpack.i.i11.i.i, %"(*internal/task.Mutex).Lock.exit.i.i10.i.i" ], [ %46, %if.then1.i.i.i.i.i.i ], [ %46, %shift.next.i.i.i.i.i.i ]
  %oldCap.pn.i.i.i.i.i.i = phi i64 [ %.unpack3.i.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i10.i.i" ], [ %shift.result.i.i.i.i.i.i, %if.then1.i.i.i.i.i.i ], [ %shift.result.i.i.i.i.i.i, %shift.next.i.i.i.i.i.i ]
    #dbg_value(i64 %oldCap.pn.i.i.i.i.i.i, !11098, !DIExpression(), !38029)
    #dbg_value(ptr %oldBuf.pn.i.i.i.i.i.i, !11095, !DIExpression(), !38030)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11097, !DIExpression(), !38031)
    #dbg_value(i64 16, !11100, !DIExpression(), !38032)
  %48 = shl i64 %.unpack2.i.i.i.i, 4, !dbg !38033
  %49 = getelementptr i8, ptr %oldBuf.pn.i.i.i.i.i.i, i64 %48, !dbg !38034
    #dbg_value(ptr undef, !11096, !DIExpression(), !38035)
    #dbg_value(i64 1, !11099, !DIExpression(), !38036)
    #dbg_value(ptr %49, !11086, !DIExpression(), !37972)
    #dbg_value(ptr undef, !11083, !DIExpression(), !37972)
    #dbg_value(i64 16, !11087, !DIExpression(), !37972)
  store ptr @"reflect/types.type:pointer:named:fmt.pp", ptr %49, align 1, !dbg !37972
  %stackalloc.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %49, i64 8, !dbg !37972
  store ptr %typeassert.value.ptr.i.i.i, ptr %stackalloc.sroa.10.0..sroa_idx.i.i.i.i, align 1, !dbg !37972
    #dbg_value(i64 %41, !11102, !DIExpression(), !38037)
  store ptr %oldBuf.pn.i.i.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !38038
  store i64 %41, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !38038
  store i64 %oldCap.pn.i.i.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !38038
    #dbg_value({ ptr, i64, i64 } poison, !37968, !DIExpression(), !38038)
    #dbg_value(ptr @fmt.ppFree, !37967, !DIExpression(), !38039)
    #dbg_value(ptr @fmt.ppFree, !15601, !DIExpression(), !38040)
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !38042)
    #dbg_value(i32 0, !15612, !DIExpression(), !38044)
    #dbg_value(ptr @fmt.ppFree, !15616, !DIExpression(), !38045)
    #dbg_value(i32 0, !15622, !DIExpression(), !38045)
  %50 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !38045
    #dbg_value(i32 %50, !15602, !DIExpression(), !38047)
  switch i32 %50, label %common.ret [
    i32 0, label %if.then.i.i.i13.i.i
    i32 2, label %gep.next5.i.i.i12.i.i
  ], !dbg !38048

if.then.i.i.i13.i.i:                              ; preds = %runtime.sliceAppend.exit.i.i.i.i
  tail call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !38049
  unreachable, !dbg !38049

gep.next5.i.i.i12.i.i:                            ; preds = %runtime.sliceAppend.exit.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !15601, !DIExpression(), !38050)
    #dbg_value(ptr @fmt.ppFree, !15629, !DIExpression(), !38051)
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !38053
  br label %common.ret, !dbg !38048

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !37779
  unreachable, !dbg !37779
}
