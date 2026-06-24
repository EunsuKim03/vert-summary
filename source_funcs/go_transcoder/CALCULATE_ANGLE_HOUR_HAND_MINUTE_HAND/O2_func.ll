define i64 @f_gold(double %h, double %m) local_unnamed_addr #0 !dbg !37730 {
entry:
    #dbg_value(double %m, !37733, !DIExpression(), !37737)
    #dbg_value(double %h, !37732, !DIExpression(), !37738)
    #dbg_value(ptr undef, !37739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37753)
    #dbg_value(ptr undef, !37760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37771)
    #dbg_value(ptr undef, !37769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37772)
  %0 = fcmp olt double %h, 0.000000e+00, !dbg !37773
  %1 = fcmp olt double %m, 0.000000e+00
  %or.cond = select i1 %0, i1 true, i1 %1, !dbg !37774
  %2 = fcmp ogt double %h, 1.200000e+01
  %or.cond17 = or i1 %2, %or.cond, !dbg !37774
  %3 = fcmp ogt double %m, 6.000000e+01
  %or.cond18 = select i1 %or.cond17, i1 true, i1 %3, !dbg !37774
  br i1 %or.cond18, label %if.then, label %if.done, !dbg !37774

if.then:                                          ; preds = %entry
    #dbg_value(ptr undef, !37769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37772)
    #dbg_value(i64 1, !37769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37772)
    #dbg_value(i64 1, !37769, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !37772)
    #dbg_value({ ptr, i64, i64 } poison, !37769, !DIExpression(), !37775)
    #dbg_value(ptr @"reflect/types.type:pointer:named:os.File", !37759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37771)
    #dbg_value(ptr @"os$alloc.173", !37759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37771)
    #dbg_value(ptr undef, !37760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37771)
    #dbg_value(i64 1, !37760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37771)
    #dbg_value(i64 1, !37760, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !37771)
    #dbg_value(ptr @fmt.ppFree, !37776, !DIExpression(), !37784)
    #dbg_value(ptr @fmt.ppFree, !15650, !DIExpression(), !37793)
    #dbg_value(ptr @fmt.ppFree, !15656, !DIExpression(), !37795)
    #dbg_value(i32 0, !15661, !DIExpression(), !37797)
    #dbg_value(i32 1, !15662, !DIExpression(), !37798)
    #dbg_value(ptr @fmt.ppFree, !15667, !DIExpression(), !37799)
    #dbg_value(i32 0, !15672, !DIExpression(), !37799)
    #dbg_value(i32 1, !15673, !DIExpression(), !37799)
  %4 = cmpxchg ptr @fmt.ppFree, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !37799
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !37799
  br i1 %5, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i.i.i", !dbg !37801

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i.i.i": ; preds = %if.then
    #dbg_value(ptr @fmt.ppFree, !15650, !DIExpression(), !37802)
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !37803)
    #dbg_value(i32 2, !15612, !DIExpression(), !37805)
    #dbg_value(ptr @fmt.ppFree, !15616, !DIExpression(), !37806)
    #dbg_value(i32 2, !15622, !DIExpression(), !37806)
  %6 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !37806
  %.not4.i.i.i.i.i = icmp eq i32 %6, 0, !dbg !37808
  br i1 %.not4.i.i.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", !dbg !37801

"(*internal/futex.Futex).Wait.exit.i.i.i.i.i":    ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i.i.i", %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !15650, !DIExpression(), !37809)
    #dbg_value(ptr @fmt.ppFree, !15685, !DIExpression(), !37810)
    #dbg_value(i32 2, !15690, !DIExpression(), !37812)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree, i32 2) #27, !dbg !37813
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !37803)
    #dbg_value(i32 2, !15612, !DIExpression(), !37805)
    #dbg_value(ptr @fmt.ppFree, !15616, !DIExpression(), !37806)
    #dbg_value(i32 2, !15622, !DIExpression(), !37806)
  %7 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !37806
  %.not.i.i.i.i.i = icmp eq i32 %7, 0, !dbg !37808
  br i1 %.not.i.i.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", !dbg !37801

"(*internal/task.Mutex).Lock.exit.i.i.i.i":       ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i.i.i", %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i.i.i", %if.then
    #dbg_value(ptr @fmt.ppFree, !37776, !DIExpression(), !37814)
  %.unpack12.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !37815
  %8 = icmp sgt i64 %.unpack12.i.i.i.i, 0, !dbg !37816
  br i1 %8, label %deref.next8.i.i.i.i, label %gep.next28.i.i.i.i, !dbg !37817

deref.next8.i.i.i.i:                              ; preds = %"(*internal/task.Mutex).Lock.exit.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !37776, !DIExpression(), !37818)
  %9 = add nsw i64 %.unpack12.i.i.i.i, -1, !dbg !37819
    #dbg_value({ ptr, ptr } poison, !37782, !DIExpression(), !37820)
  %.unpack27.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !37821
  %slice.highmax.i.i.i.i = icmp ugt i64 %9, %.unpack27.i.i.i.i, !dbg !37822
  br i1 %slice.highmax.i.i.i.i, label %slice.throw.i.i.i.i, label %store.next.i.i.i.i, !dbg !37822

store.next.i.i.i.i:                               ; preds = %deref.next8.i.i.i.i
  %.unpack16.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !37823
  %10 = getelementptr inbounds nuw { ptr, ptr }, ptr %.unpack16.i.i.i.i, i64 %9, !dbg !37824
  %.elt23.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8, !dbg !37824
  %.unpack24.i.i.i.i = load ptr, ptr %.elt23.i.i.i.i, align 8, !dbg !37824
  %.unpack22.i.i.i.i = load ptr, ptr %10, align 8, !dbg !37824
  store i64 %9, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !37825
    #dbg_value({ ptr, i64, i64 } poison, !37783, !DIExpression(), !37825)
    #dbg_value(ptr @fmt.ppFree, !37776, !DIExpression(), !37826)
  %11 = insertvalue { ptr, ptr } poison, ptr %.unpack22.i.i.i.i, 0, !dbg !37824
  %12 = insertvalue { ptr, ptr } %11, ptr %.unpack24.i.i.i.i, 1, !dbg !37824
    #dbg_value({ ptr, ptr } %12, !37782, !DIExpression(), !37820)
    #dbg_value(ptr @fmt.ppFree, !15601, !DIExpression(), !37827)
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !37829)
    #dbg_value(i32 0, !15612, !DIExpression(), !37831)
    #dbg_value(ptr @fmt.ppFree, !15616, !DIExpression(), !37832)
    #dbg_value(i32 0, !15622, !DIExpression(), !37832)
  %13 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !37832
    #dbg_value(i32 %13, !15602, !DIExpression(), !37834)
  switch i32 %13, label %"(*sync.Pool).Get.exit.i.i.i" [
    i32 0, label %if.then.i.i.i.i.i
    i32 2, label %gep.next5.i.i.i.i.i
  ], !dbg !37835

if.then.i.i.i.i.i:                                ; preds = %store.next.i.i.i.i
  tail call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !37836
  unreachable, !dbg !37836

gep.next5.i.i.i.i.i:                              ; preds = %store.next.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !15601, !DIExpression(), !37837)
    #dbg_value(ptr @fmt.ppFree, !15629, !DIExpression(), !37838)
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !37840
  br label %"(*sync.Pool).Get.exit.i.i.i", !dbg !37835

gep.next28.i.i.i.i:                               ; preds = %"(*internal/task.Mutex).Lock.exit.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !37776, !DIExpression(), !37841)
    #dbg_value(ptr @fmt.ppFree, !15601, !DIExpression(), !37842)
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !37844)
    #dbg_value(i32 0, !15612, !DIExpression(), !37846)
    #dbg_value(ptr @fmt.ppFree, !15616, !DIExpression(), !37847)
    #dbg_value(i32 0, !15622, !DIExpression(), !37847)
  %14 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !37847
    #dbg_value(i32 %14, !15602, !DIExpression(), !37849)
  switch i32 %14, label %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i" [
    i32 0, label %if.then.i35.i.i.i.i
    i32 2, label %gep.next5.i34.i.i.i.i
  ], !dbg !37850

if.then.i35.i.i.i.i:                              ; preds = %gep.next28.i.i.i.i
  tail call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !37851
  unreachable, !dbg !37851

gep.next5.i34.i.i.i.i:                            ; preds = %gep.next28.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !15601, !DIExpression(), !37852)
    #dbg_value(ptr @fmt.ppFree, !15629, !DIExpression(), !37853)
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !37855
  br label %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i", !dbg !37850

"(*internal/task.Mutex).Unlock.exit36.i.i.i.i":   ; preds = %gep.next5.i34.i.i.i.i, %gep.next28.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !37776, !DIExpression(), !37856)
  %.unpack14.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 16), align 8, !dbg !37857
  %15 = icmp eq ptr %.unpack14.i.i.i.i, null, !dbg !37858
  br i1 %15, label %"(*sync.Pool).Get.exit.i.i.i", label %fpcall.next.i.i.i.i, !dbg !37817

fpcall.next.i.i.i.i:                              ; preds = %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i"
    #dbg_value(ptr @fmt.ppFree, !37776, !DIExpression(), !37859)
  %.unpack.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 8), align 8, !dbg !37860
  %16 = tail call { ptr, ptr } %.unpack14.i.i.i.i(ptr %.unpack.i.i.i.i) #27, !dbg !37861
  br label %"(*sync.Pool).Get.exit.i.i.i", !dbg !37862

slice.throw.i.i.i.i:                              ; preds = %deref.next8.i.i.i.i
  tail call fastcc void @runtime.slicePanic(), !dbg !37822
  unreachable, !dbg !37822

"(*sync.Pool).Get.exit.i.i.i":                    ; preds = %fpcall.next.i.i.i.i, %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i", %gep.next5.i.i.i.i.i, %store.next.i.i.i.i
  %common.ret.op.i.i.i.i = phi { ptr, ptr } [ %16, %fpcall.next.i.i.i.i ], [ zeroinitializer, %"(*internal/task.Mutex).Unlock.exit36.i.i.i.i" ], [ %12, %store.next.i.i.i.i ], [ %12, %gep.next5.i.i.i.i.i ]
  %interface.type.i.i.i = extractvalue { ptr, ptr } %common.ret.op.i.i.i.i, 0, !dbg !37863
  %typeassert.ok3.i.i.i = icmp eq ptr %interface.type.i.i.i, @"reflect/types.type:pointer:named:fmt.pp", !dbg !37863
  %typeassert.value.ptr.i.i.i = extractvalue { ptr, ptr } %common.ret.op.i.i.i.i, 1
    #dbg_value(i1 %typeassert.ok3.i.i.i, !27889, !DIExpression(), !37864)
  br i1 %typeassert.ok3.i.i.i, label %runtime.interfaceTypeAssert.exit.i.i.i, label %if.then.i.i.i.i, !dbg !37866

if.then.i.i.i.i:                                  ; preds = %"(*sync.Pool).Get.exit.i.i.i"
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"runtime$string.11", i64 18), !dbg !37867
  unreachable, !dbg !37866

runtime.interfaceTypeAssert.exit.i.i.i:           ; preds = %"(*sync.Pool).Get.exit.i.i.i"
    #dbg_value(ptr poison, !37788, !DIExpression(), !37868)
  %.not.i.i.i = icmp eq ptr %typeassert.value.ptr.i.i.i, null, !dbg !37869
  br i1 %.not.i.i.i, label %gep.throw.i.i.i, label %fmt.newPrinter.exit.i.i, !dbg !37869

gep.throw.i.i.i:                                  ; preds = %runtime.interfaceTypeAssert.exit.i.i.i
  tail call fastcc void @runtime.nilPanic(), !dbg !37869
  unreachable, !dbg !37869

fmt.newPrinter.exit.i.i:                          ; preds = %runtime.interfaceTypeAssert.exit.i.i.i
  %17 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 178, !dbg !37869
  store i1 false, ptr %17, align 1, !dbg !37869
    #dbg_value(i1 false, !37789, !DIExpression(), !37869)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37788, !DIExpression(), !37870)
  %18 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 179, !dbg !37871
  store i1 false, ptr %18, align 1, !dbg !37871
    #dbg_value(i1 false, !37790, !DIExpression(), !37871)
  %19 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 180, !dbg !37872
  store i1 false, ptr %19, align 1, !dbg !37872
    #dbg_value(i1 false, !37791, !DIExpression(), !37872)
  %20 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 64, !dbg !37873
    #dbg_value(ptr %20, !37874, !DIExpression(), !37881)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37879, !DIExpression(), !37883)
  store ptr %typeassert.value.ptr.i.i.i, ptr %20, align 8, !dbg !37884
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37880, !DIExpression(), !37884)
    #dbg_value(ptr %20, !30300, !DIExpression(), !37885)
  %21 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 72, !dbg !37887
    #dbg_value(%fmt.fmtFlags zeroinitializer, !30305, !DIExpression(), !37887)
  %22 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 88, !dbg !37888
    #dbg_value(i64 0, !30306, !DIExpression(), !37888)
    #dbg_value(i64 0, !30307, !DIExpression(), !37889)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %21, i8 0, i64 9, i1 false), !dbg !37887
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false), !dbg !37888
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37761, !DIExpression(), !37890)
    #dbg_value({ ptr, i64, i64 } poison, !37760, !DIExpression(), !37891)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37748, !DIExpression(), !37753)
    #dbg_value(ptr undef, !37739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37753)
    #dbg_value(i64 1, !37739, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37753)
    #dbg_value(i64 1, !37739, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !37753)
    #dbg_value(i1 false, !37749, !DIExpression(), !37892)
    #dbg_value({ ptr, i64, i64 } poison, !37739, !DIExpression(), !37893)
    #dbg_value(i1 poison, !37752, !DIExpression(), !37894)
    #dbg_value(i64 poison, !37750, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !37895)
    #dbg_value({ ptr, ptr } poison, !37751, !DIExpression(), !37896)
  tail call fastcc void @"(*fmt.pp).printArg"(ptr nonnull dereferenceable_or_null(208) %typeassert.value.ptr.i.i.i, ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"main$pack"), !dbg !37897
    #dbg_value(i1 poison, !37749, !DIExpression(), !37898)
    #dbg_value({ ptr, ptr } poison, !37759, !DIExpression(), !37899)
  %.unpack.i.i = load ptr, ptr %typeassert.value.ptr.i.i.i, align 8, !dbg !37900
  %.elt2.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 8, !dbg !37900
  %.unpack3.i.i = load i64, ptr %.elt2.i.i, align 8, !dbg !37900
  %.elt4.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 16, !dbg !37900
  %.unpack5.i.i = load i64, ptr %.elt4.i.i, align 8, !dbg !37900
  %23 = tail call fastcc { i64, { ptr, ptr } } @"(*os.File).Write"(ptr nonnull @"os$alloc.173", ptr %.unpack.i.i, i64 %.unpack3.i.i), !dbg !37901
    #dbg_value(i64 poison, !37762, !DIExpression(), !37902)
    #dbg_value({ ptr, ptr } poison, !37763, !DIExpression(), !37903)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37904, !DIExpression(), !37913)
  %.unpack15.i.i.i = load i64, ptr %.elt4.i.i, align 8, !dbg !37915
  %24 = icmp sgt i64 %.unpack15.i.i.i, 65536, !dbg !37916
  br i1 %24, label %store.next.i.i.i, label %deref.next8.i.i.i, !dbg !37917

store.next.i.i.i:                                 ; preds = %fmt.newPrinter.exit.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37904, !DIExpression(), !37918)
  store ptr null, ptr %typeassert.value.ptr.i.i.i, align 8, !dbg !37919
    #dbg_value({ ptr, i64, i64 } zeroinitializer, !37909, !DIExpression(), !37919)
  br label %deref.next8.i.i.i, !dbg !37917

deref.next8.i.i.i:                                ; preds = %store.next.i.i.i, %fmt.newPrinter.exit.i.i
  %storemerge.i.i.i = phi i64 [ 0, %store.next.i.i.i ], [ %.unpack15.i.i.i, %fmt.newPrinter.exit.i.i ], !dbg !37917
  store i64 0, ptr %.elt2.i.i, align 8, !dbg !37917
  store i64 %storemerge.i.i.i, ptr %.elt4.i.i, align 8, !dbg !37917
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37904, !DIExpression(), !37920)
  %.elt29.i.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 200, !dbg !37921
  %.unpack30.i.i.i = load i64, ptr %.elt29.i.i.i, align 8, !dbg !37921
  %25 = icmp sgt i64 %.unpack30.i.i.i, 8, !dbg !37922
  br i1 %25, label %store.next13.i.i.i, label %store.next17.i.i.i, !dbg !37917

store.next13.i.i.i:                               ; preds = %deref.next8.i.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37904, !DIExpression(), !37923)
  %26 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 184, !dbg !37924
    #dbg_value({ ptr, i64, i64 } zeroinitializer, !37910, !DIExpression(), !37924)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false), !dbg !37924
  br label %store.next17.i.i.i, !dbg !37917

store.next17.i.i.i:                               ; preds = %store.next13.i.i.i, %deref.next8.i.i.i
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37904, !DIExpression(), !37925)
  %27 = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 24, !dbg !37926
    #dbg_value({ ptr, ptr } zeroinitializer, !37911, !DIExpression(), !37926)
    #dbg_value(%reflect.Value zeroinitializer, !37912, !DIExpression(), !37927)
  %.repack39.i.i.i = getelementptr inbounds nuw i8, ptr %typeassert.value.ptr.i.i.i, i64 192, !dbg !37928
  store i64 0, ptr %.repack39.i.i.i, align 8, !dbg !37928
    #dbg_value({ ptr, i64, i64 } poison, !37910, !DIExpression(), !37928)
    #dbg_value(ptr @"reflect/types.type:pointer:named:fmt.pp", !37929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37936)
    #dbg_value(ptr %typeassert.value.ptr.i.i.i, !37929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37936)
    #dbg_value(ptr @fmt.ppFree, !37934, !DIExpression(), !37938)
    #dbg_value(ptr undef, !11083, !DIExpression(), !37939)
    #dbg_value(ptr undef, !11096, !DIExpression(), !37942)
    #dbg_value(ptr @fmt.ppFree, !15650, !DIExpression(), !37943)
    #dbg_value(ptr @fmt.ppFree, !15656, !DIExpression(), !37945)
    #dbg_value(i32 0, !15661, !DIExpression(), !37947)
    #dbg_value(i32 1, !15662, !DIExpression(), !37948)
    #dbg_value(ptr @fmt.ppFree, !15667, !DIExpression(), !37949)
    #dbg_value(i32 0, !15672, !DIExpression(), !37949)
    #dbg_value(i32 1, !15673, !DIExpression(), !37949)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %27, i8 0, i64 40, i1 false), !dbg !37926
  %28 = cmpxchg ptr @fmt.ppFree, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !37949
  %29 = extractvalue { i32, i1 } %28, 1, !dbg !37949
  br i1 %29, label %"(*internal/task.Mutex).Lock.exit.i.i10.i.i", label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i6.i.i", !dbg !37951

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i6.i.i": ; preds = %store.next17.i.i.i
    #dbg_value(ptr @fmt.ppFree, !15650, !DIExpression(), !37952)
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !37953)
    #dbg_value(i32 2, !15612, !DIExpression(), !37955)
    #dbg_value(ptr @fmt.ppFree, !15616, !DIExpression(), !37956)
    #dbg_value(i32 2, !15622, !DIExpression(), !37956)
  %30 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !37956
  %.not4.i.i.i7.i.i = icmp eq i32 %30, 0, !dbg !37958
  br i1 %.not4.i.i.i7.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i10.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i", !dbg !37951

"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i":   ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i6.i.i", %"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i"
    #dbg_value(ptr @fmt.ppFree, !15650, !DIExpression(), !37959)
    #dbg_value(ptr @fmt.ppFree, !15685, !DIExpression(), !37960)
    #dbg_value(i32 2, !15690, !DIExpression(), !37962)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree, i32 2) #27, !dbg !37963
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !37953)
    #dbg_value(i32 2, !15612, !DIExpression(), !37955)
    #dbg_value(ptr @fmt.ppFree, !15616, !DIExpression(), !37956)
    #dbg_value(i32 2, !15622, !DIExpression(), !37956)
  %31 = atomicrmw xchg ptr @fmt.ppFree, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !37956
  %.not.i.i.i9.i.i = icmp eq i32 %31, 0, !dbg !37958
  br i1 %.not.i.i.i9.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i10.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i", !dbg !37951

"(*internal/task.Mutex).Lock.exit.i.i10.i.i":     ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i8.i.i", %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i6.i.i", %store.next17.i.i.i
    #dbg_value(ptr @fmt.ppFree, !37934, !DIExpression(), !37964)
  %.unpack.i.i11.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !37965
  %.unpack2.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !37965
  %.unpack3.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !37965
    #dbg_value({ ptr, ptr } poison, !37929, !DIExpression(), !37966)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11095, !DIExpression(), !37942)
    #dbg_value(ptr undef, !11096, !DIExpression(), !37942)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11098, !DIExpression(), !37942)
    #dbg_value(i64 16, !11100, !DIExpression(), !37942)
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11101, !DIExpression(), !37942)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11097, !DIExpression(), !37967)
    #dbg_value(i64 1, !11099, !DIExpression(), !37968)
  %32 = add i64 %.unpack2.i.i.i.i, 1, !dbg !37969
    #dbg_value(i64 %32, !11102, !DIExpression(), !37970)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11121, !DIExpression(), !37971)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11126, !DIExpression(), !37971)
    #dbg_value(i64 16, !11129, !DIExpression(), !37971)
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11130, !DIExpression(), !37971)
    #dbg_value(i64 %.unpack3.i.i.i.i, !11127, !DIExpression(), !37973)
    #dbg_value(i64 %32, !11128, !DIExpression(), !37974)
  %.not.i.i.i.i.i.i = icmp ult i64 %.unpack3.i.i.i.i, %32, !dbg !37975
  br i1 %.not.i.i.i.i.i.i, label %shift.next.i.i.i.i.i.i, label %runtime.sliceAppend.exit.i.i.i.i, !dbg !37976

shift.next.i.i.i.i.i.i:                           ; preds = %"(*internal/task.Mutex).Lock.exit.i.i10.i.i"
    #dbg_value(i64 %32, !11128, !DIExpression(), !37977)
    #dbg_value(i64 %32, !11139, !DIExpression(), !37978)
  %33 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %32, i1 true), !dbg !37978
  %34 = sub nuw nsw i64 64, %33, !dbg !37978
  %shift.overflow.i.i.i.i.i.i = icmp eq i64 %33, 0, !dbg !37980
  %35 = shl nuw i64 1, %34, !dbg !37980
  %shift.result.i.i.i.i.i.i = select i1 %shift.overflow.i.i.i.i.i.i, i64 0, i64 %35, !dbg !37980
    #dbg_value(i64 %shift.result.i.i.i.i.i.i, !11128, !DIExpression(), !37981)
    #dbg_value(i64 16, !11129, !DIExpression(), !37982)
  %36 = shl i64 %shift.result.i.i.i.i.i.i, 4, !dbg !37983
    #dbg_value(ptr inttoptr (i64 389 to ptr), !11130, !DIExpression(), !37984)
  %37 = tail call fastcc ptr @runtime.alloc(i64 %36, ptr nonnull inttoptr (i64 389 to ptr)), !dbg !37985
    #dbg_value(ptr %37, !11131, !DIExpression(), !37986)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11126, !DIExpression(), !37987)
  %.not1.i.i.i.i.i.i = icmp eq i64 %.unpack2.i.i.i.i, 0, !dbg !37988
  br i1 %.not1.i.i.i.i.i.i, label %runtime.sliceAppend.exit.i.i.i.i, label %if.then1.i.i.i.i.i.i, !dbg !37976

if.then1.i.i.i.i.i.i:                             ; preds = %shift.next.i.i.i.i.i.i
    #dbg_value(ptr %37, !11131, !DIExpression(), !37989)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11121, !DIExpression(), !37990)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11126, !DIExpression(), !37991)
    #dbg_value(i64 16, !11129, !DIExpression(), !37992)
  %38 = shl i64 %.unpack2.i.i.i.i, 4, !dbg !37993
    #dbg_value(ptr %37, !11086, !DIExpression(), !37994)
    #dbg_value(ptr %.unpack.i.i11.i.i, !11083, !DIExpression(), !37994)
    #dbg_value(i64 %38, !11087, !DIExpression(), !37994)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %37, ptr readonly align 1 %.unpack.i.i11.i.i, i64 %38, i1 false), !dbg !37994
  br label %runtime.sliceAppend.exit.i.i.i.i, !dbg !37976

runtime.sliceAppend.exit.i.i.i.i:                 ; preds = %if.then1.i.i.i.i.i.i, %shift.next.i.i.i.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i10.i.i"
  %oldBuf.pn.i.i.i.i.i.i = phi ptr [ %.unpack.i.i11.i.i, %"(*internal/task.Mutex).Lock.exit.i.i10.i.i" ], [ %37, %if.then1.i.i.i.i.i.i ], [ %37, %shift.next.i.i.i.i.i.i ]
  %oldCap.pn.i.i.i.i.i.i = phi i64 [ %.unpack3.i.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i10.i.i" ], [ %shift.result.i.i.i.i.i.i, %if.then1.i.i.i.i.i.i ], [ %shift.result.i.i.i.i.i.i, %shift.next.i.i.i.i.i.i ]
    #dbg_value(i64 %oldCap.pn.i.i.i.i.i.i, !11098, !DIExpression(), !37996)
    #dbg_value(ptr %oldBuf.pn.i.i.i.i.i.i, !11095, !DIExpression(), !37997)
    #dbg_value(i64 %.unpack2.i.i.i.i, !11097, !DIExpression(), !37998)
    #dbg_value(i64 16, !11100, !DIExpression(), !37999)
  %39 = shl i64 %.unpack2.i.i.i.i, 4, !dbg !38000
  %40 = getelementptr i8, ptr %oldBuf.pn.i.i.i.i.i.i, i64 %39, !dbg !38001
    #dbg_value(ptr undef, !11096, !DIExpression(), !38002)
    #dbg_value(i64 1, !11099, !DIExpression(), !38003)
    #dbg_value(ptr %40, !11086, !DIExpression(), !37939)
    #dbg_value(ptr undef, !11083, !DIExpression(), !37939)
    #dbg_value(i64 16, !11087, !DIExpression(), !37939)
  store ptr @"reflect/types.type:pointer:named:fmt.pp", ptr %40, align 1, !dbg !37939
  %stackalloc.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %40, i64 8, !dbg !37939
  store ptr %typeassert.value.ptr.i.i.i, ptr %stackalloc.sroa.10.0..sroa_idx.i.i.i.i, align 1, !dbg !37939
    #dbg_value(i64 %32, !11102, !DIExpression(), !38004)
  store ptr %oldBuf.pn.i.i.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 24), align 8, !dbg !38005
  store i64 %32, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 32), align 8, !dbg !38005
  store i64 %oldCap.pn.i.i.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @fmt.ppFree, i64 40), align 8, !dbg !38005
    #dbg_value({ ptr, i64, i64 } poison, !37935, !DIExpression(), !38005)
    #dbg_value(ptr @fmt.ppFree, !37934, !DIExpression(), !38006)
    #dbg_value(ptr @fmt.ppFree, !15601, !DIExpression(), !38007)
    #dbg_value(ptr @fmt.ppFree, !15605, !DIExpression(), !38009)
    #dbg_value(i32 0, !15612, !DIExpression(), !38011)
    #dbg_value(ptr @fmt.ppFree, !15616, !DIExpression(), !38012)
    #dbg_value(i32 0, !15622, !DIExpression(), !38012)
  %41 = atomicrmw xchg ptr @fmt.ppFree, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !38012
    #dbg_value(i32 %41, !15602, !DIExpression(), !38014)
  switch i32 %41, label %if.done [
    i32 0, label %if.then.i.i.i13.i.i
    i32 2, label %gep.next5.i.i.i12.i.i
  ], !dbg !38015

if.then.i.i.i13.i.i:                              ; preds = %runtime.sliceAppend.exit.i.i.i.i
  tail call fastcc void @runtime._panic(ptr nonnull @"reflect/types.type:basic:string", ptr nonnull @"internal/task$pack"), !dbg !38016
  unreachable, !dbg !38016

gep.next5.i.i.i12.i.i:                            ; preds = %runtime.sliceAppend.exit.i.i.i.i
    #dbg_value(ptr @fmt.ppFree, !15601, !DIExpression(), !38017)
    #dbg_value(ptr @fmt.ppFree, !15629, !DIExpression(), !38018)
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @fmt.ppFree) #27, !dbg !38020
  br label %if.done, !dbg !38015

if.done:                                          ; preds = %gep.next5.i.i.i12.i.i, %runtime.sliceAppend.exit.i.i.i.i, %entry
    #dbg_value(double %h, !37732, !DIExpression(), !38021)
  %42 = fcmp oeq double %h, 1.200000e+01, !dbg !38022
    #dbg_value(double %m, !37733, !DIExpression(), !38023)
  %43 = fcmp oeq double %m, 6.000000e+01, !dbg !38024
  %44 = select i1 %43, double 0.000000e+00, double %m, !dbg !37774
    #dbg_value(double poison, !37732, !DIExpression(), !38025)
  %45 = fmul double %h, 6.000000e+01, !dbg !38026
  %46 = select i1 %42, double 0.000000e+00, double %45, !dbg !37774
    #dbg_value(double %44, !37733, !DIExpression(), !38027)
  %47 = fadd double %46, %44, !dbg !38028
  %48 = fmul double %47, 5.000000e-01, !dbg !38029
  %abovemin = fcmp oge double %48, 0xC3E0000000000000, !dbg !38030
  %belowmax = fcmp ole double %48, 0x43DFFFFFFFFFFFFE, !dbg !38030
  %inbounds = and i1 %abovemin, %belowmax, !dbg !38030
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !38030
  %isnan = fcmp uno double %48, 0.000000e+00, !dbg !38030
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !38030
  %normal = fptosi double %48 to i64, !dbg !38030
  %49 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !38030
    #dbg_value(i64 %49, !37734, !DIExpression(), !38031)
  %50 = fmul double %44, 6.000000e+00, !dbg !38032
  %abovemin7 = fcmp oge double %50, 0xC3E0000000000000, !dbg !38033
  %belowmax8 = fcmp ole double %50, 0x43DFFFFFFFFFFFFE, !dbg !38033
  %inbounds9 = and i1 %abovemin7, %belowmax8, !dbg !38033
  %saturated10 = select i1 %abovemin7, i64 9223372036854775807, i64 -9223372036854775808, !dbg !38033
  %isnan11 = fcmp uno double %50, 0.000000e+00, !dbg !38033
  %remapped12 = select i1 %isnan11, i64 0, i64 %saturated10, !dbg !38033
  %normal13 = fptosi double %50 to i64, !dbg !38033
  %51 = select i1 %inbounds9, i64 %normal13, i64 %remapped12, !dbg !38033
    #dbg_value(i64 %51, !37735, !DIExpression(), !38034)
  %52 = sub i64 %49, %51, !dbg !38035
  %53 = sitofp i64 %52 to double, !dbg !38036
    #dbg_value(double %53, !38037, !DIExpression(), !38041)
  %54 = tail call double @llvm.fabs.f64(double %53), !dbg !38043
  %belowmax15 = fcmp ole double %54, 0x43DFFFFFFFFFFFFE, !dbg !38044
  %normal20 = fptosi double %54 to i64, !dbg !38044
  %55 = select i1 %belowmax15, i64 %normal20, i64 9223372036854775807, !dbg !38044
    #dbg_value(i64 %55, !37736, !DIExpression(), !38045)
  %56 = sub i64 360, %55, !dbg !38046
    #dbg_value(i64 %56, !38047, !DIExpression(), !38051)
    #dbg_value(i64 %55, !38050, !DIExpression(), !38053)
  %x.y.i = tail call i64 @llvm.smin.i64(i64 %56, i64 %55), !dbg !38054
    #dbg_value(i64 %x.y.i, !37736, !DIExpression(), !38055)
  ret i64 %x.y.i, !dbg !38056
}
