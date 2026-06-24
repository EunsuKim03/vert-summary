define void @f_gold(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %_4.i.i.i.i = alloca [24 x i8], align 8
  %is_less.i.i = alloca [8 x i8], align 8
  %_4.i.i = alloca [24 x i8], align 8
  %_19 = alloca [24 x i8], align 8
  %_6 = alloca [24 x i8], align 8
  %concat = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !2582, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2585)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2585
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef range(i64 0, -9223372036854775808) %_0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %cleanup

bb24:                                             ; preds = %cleanup.i18, %cleanup, %bb23
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb23 ], [ %1, %cleanup ], [ %28, %cleanup.i18 ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"(ptr noalias noundef align 8 dereferenceable(24) %str) #33
          to label %common.resume unwind label %terminate

cleanup:                                          ; preds = %bb4.i, %bb3.i.i, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %bb24

.noexc:                                           ; preds = %start
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1479, !noalias !2585, !noundef !37
  %2 = trunc nuw i64 %_5.i.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %3, align 8, !range !1480, !noalias !2585, !noundef !37
  %4 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %2, label %bb3.i.i, label %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hab7a9d9e13404a55E.exit", !prof !1481

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %4, align 8, !noalias !2585
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #32
          to label %.noexc7 unwind label %cleanup

.noexc7:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hab7a9d9e13404a55E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %4, align 8, !noalias !2585, !nonnull !37, !noundef !37
  %_7.i.i = icmp samesign ule i64 %_0.i, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2585
  store i64 %err.0.i.i, ptr %arr, align 8, !alias.scope !2585
  %5 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  store ptr %this.1.i.i, ptr %5, align 8, !alias.scope !2585
  %6 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  store i64 0, ptr %6, align 8, !alias.scope !2585
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %concat)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_6)
; invoke <alloc::string::String as core::clone::Clone>::clone
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h3201baa471bff1abE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %str)
          to label %bb3 unwind label %cleanup1

bb23:                                             ; preds = %cleanup.i.i, %cleanup.i, %cleanup1, %cleanup3.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body34, %cleanup3.body ], [ %7, %cleanup1 ], [ %9, %cleanup.i ], [ %26, %cleanup.i.i ]
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17ha5714b0b3d45e72aE"(ptr noalias noundef align 8 dereferenceable(24) %arr) #33
          to label %bb24 unwind label %terminate

cleanup1:                                         ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE.exit.i", %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hab7a9d9e13404a55E.exit"
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %bb23

bb3:                                              ; preds = %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hab7a9d9e13404a55E.exit"
  %8 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %8, align 8, !alias.scope !2588, !nonnull !37, !noundef !37
  %len.i.i = load i64, ptr %0, align 8, !alias.scope !2588, !noundef !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2593)
  %_11.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
; invoke <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_6, ptr noundef nonnull readonly align 1 %_6.i.i, ptr noundef nonnull readonly %_11.i)
          to label %"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E.exit" unwind label %cleanup.i, !noalias !2593

cleanup.i:                                        ; preds = %bb3
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_6) #33
          to label %bb23 unwind label %terminate.i, !noalias !2593

terminate.i:                                      ; preds = %cleanup.i
  %10 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30, !noalias !2593
  unreachable

"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E.exit": ; preds = %bb3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %concat, ptr noundef nonnull align 8 dereferenceable(24) %_6, i64 24, i1 false), !alias.scope !2596, !noalias !2598
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_6)
  %_0.i.i.i49.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i49.not, label %bb11, label %bb10.lr.ph

bb10.lr.ph:                                       ; preds = %"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E.exit"
  %11 = getelementptr inbounds nuw i8, ptr %concat, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %concat, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 16
  %bytes.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_19, i64 8
  %bytes.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_19, i64 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_19)
  call void @llvm.experimental.noalias.scope.decl(metadata !2600)
  %_8.i.peel = load ptr, ptr %11, align 8, !alias.scope !2600, !nonnull !37, !noundef !37
  %len.i.peel = load i64, ptr %12, align 8, !alias.scope !2600, !noundef !37
  %_19.not.i.i.i.peel = icmp ult i64 %_0.i, %len.i.peel
  br i1 %_19.not.i.i.i.peel, label %bb18.i.i.i.peel, label %bb16.i.i.i.peel

bb16.i.i.i.peel:                                  ; preds = %bb10.lr.ph
  %15 = icmp eq i64 %_0.i, %len.i.peel
  br label %bb19.i.i.i.peel

bb18.i.i.i.peel:                                  ; preds = %bb10.lr.ph
  %16 = getelementptr inbounds nuw i8, ptr %_8.i.peel, i64 %_0.i
  %self2.i.i.i.peel = load i8, ptr %16, align 1, !alias.scope !2603, !noalias !2600, !noundef !37
  %17 = icmp sgt i8 %self2.i.i.i.peel, -65
  br label %bb19.i.i.i.peel

bb19.i.i.i.peel:                                  ; preds = %bb18.i.i.i.peel, %bb16.i.i.i.peel
  %_7.sroa.0.0.in.i.i.i.peel = phi i1 [ %15, %bb16.i.i.i.peel ], [ %17, %bb18.i.i.i.peel ]
  br i1 %_7.sroa.0.0.in.i.i.i.peel, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE.exit.peel", label %bb3.i.i9, !prof !2608

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE.exit.peel": ; preds = %bb19.i.i.i.peel
  call void @llvm.experimental.noalias.scope.decl(metadata !2609)
  call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !2615
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %_0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc27.peel unwind label %cleanup3.loopexit.loopexit.split-lp

.noexc27.peel:                                    ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE.exit.peel"
  %_5.i.i.i.i.peel = load i64, ptr %_4.i.i.i.i, align 8, !range !1479, !noalias !2615, !noundef !37
  %18 = trunc nuw i64 %_5.i.i.i.i.peel to i1
  br i1 %18, label %bb3.i.i.i.i, label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE.exit.peel", !prof !2621

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE.exit.peel": ; preds = %.noexc27.peel
  %this.0.i.i.i.i.peel = load i64, ptr %13, align 8, !range !2576, !noalias !2615, !noundef !37
  %this.1.i.i.i.i.peel = load ptr, ptr %14, align 8, !noalias !2615, !nonnull !37, !noundef !37
  %_7.i.i.i.i.peel = icmp samesign ule i64 %_0.i, %this.0.i.i.i.i.peel
  call void @llvm.assume(i1 %_7.i.i.i.i.peel)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !2615
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %this.1.i.i.i.i.peel, ptr nonnull readonly align 1 %_8.i.peel, i64 range(i64 0, -9223372036854775808) %_0.i, i1 false), !noalias !2622
  store i64 %this.0.i.i.i.i.peel, ptr %_19, align 8, !alias.scope !2623, !noalias !2624
  store ptr %this.1.i.i.i.i.peel, ptr %bytes.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !2623, !noalias !2624
  store i64 %_0.i, ptr %bytes.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !2623, !noalias !2624
  %len.i.i29.peel = load i64, ptr %6, align 8, !alias.scope !2625, !noalias !2630, !noundef !37
  %self1.i.i.peel = load i64, ptr %arr, align 8, !range !2576, !alias.scope !2625, !noalias !2630, !noundef !37
  %_4.i.i30.peel = icmp eq i64 %len.i.i29.peel, %self1.i.i.peel
  br i1 %_4.i.i30.peel, label %bb1.i.i31.peel, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit.peel"

bb1.i.i31.peel:                                   ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE.exit.peel"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he6449fc15ab6cfeaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit.peel" unwind label %cleanup.i.i32.loopexit.split-lp, !noalias !2630

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit.peel": ; preds = %bb1.i.i31.peel, %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE.exit.peel"
  %_15.i.i.peel = load ptr, ptr %5, align 8, !alias.scope !2625, !noalias !2630, !nonnull !37, !noundef !37
  %end.i.i.peel = getelementptr inbounds nuw %"alloc::string::String", ptr %_15.i.i.peel, i64 %len.i.i29.peel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %end.i.i.peel, ptr noundef nonnull align 8 dereferenceable(24) %_19, i64 24, i1 false)
  %19 = add i64 %len.i.i29.peel, 1
  store i64 %19, ptr %6, align 8, !alias.scope !2625, !noalias !2630
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_19)
  %_0.i.i.i.peel.not = icmp eq i64 %_0.i, 1
  br i1 %_0.i.i.i.peel.not, label %bb11, label %bb10

cleanup3.loopexit.loopexit:                       ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE.exit"
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup3.body

cleanup3.loopexit.loopexit.split-lp:              ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE.exit.peel"
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup3.body

cleanup3.loopexit.split-lp:                       ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h75f61264603f890aE.exit", %bb3.i.i9, %bb10.i.i, %panic.i.i, %bb3.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup3.body

cleanup3.body:                                    ; preds = %cleanup3.loopexit.loopexit, %cleanup3.loopexit.loopexit.split-lp, %cleanup3.loopexit.split-lp, %cleanup.i.i32
  %eh.lpad-body34 = phi { ptr, i32 } [ %lpad.phi73, %cleanup.i.i32 ], [ %lpad.loopexit.split-lp, %cleanup3.loopexit.split-lp ], [ %lpad.loopexit70, %cleanup3.loopexit.loopexit ], [ %lpad.loopexit.split-lp71, %cleanup3.loopexit.loopexit.split-lp ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"(ptr noalias noundef align 8 dereferenceable(24) %concat) #33
          to label %bb23 unwind label %terminate

bb10:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit.peel", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit"
  %spec.select52 = phi i64 [ %spec.select, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit" ], [ 2, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit.peel" ]
  %iter.sroa.0.051 = phi i64 [ %spec.select52, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit" ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit.peel" ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_19)
  %_23 = add nuw i64 %iter.sroa.0.051, %_0.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2633)
  %_8.i = load ptr, ptr %11, align 8, !alias.scope !2633, !nonnull !37, !noundef !37
  %len.i = load i64, ptr %12, align 8, !alias.scope !2633, !noundef !37
  %_12.not.i.i.i = icmp ult i64 %iter.sroa.0.051, %len.i
  br i1 %_12.not.i.i.i, label %bb12.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb10
  %20 = icmp eq i64 %iter.sroa.0.051, %len.i
  br label %bb13.i.i.i

bb12.i.i.i:                                       ; preds = %bb10
  %21 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter.sroa.0.051
  %self.i.i.i = load i8, ptr %21, align 1, !alias.scope !2603, !noalias !2633, !noundef !37
  %22 = icmp sgt i8 %self.i.i.i, -65
  br label %bb13.i.i.i

bb13.i.i.i:                                       ; preds = %bb12.i.i.i, %bb10.i.i.i
  %_6.sroa.0.0.in.i.i.i = phi i1 [ %20, %bb10.i.i.i ], [ %22, %bb12.i.i.i ]
  br i1 %_6.sroa.0.0.in.i.i.i, label %bb15.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb15.i.i.i:                                       ; preds = %bb13.i.i.i
  %_19.not.i.i.i = icmp ult i64 %_23, %len.i
  br i1 %_19.not.i.i.i, label %bb18.i.i.i, label %bb16.i.i.i

bb16.i.i.i:                                       ; preds = %bb15.i.i.i
  %23 = icmp eq i64 %_23, %len.i
  br label %bb19.i.i.i

bb18.i.i.i:                                       ; preds = %bb15.i.i.i
  %24 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_23
  %self2.i.i.i = load i8, ptr %24, align 1, !alias.scope !2603, !noalias !2633, !noundef !37
  %25 = icmp sgt i8 %self2.i.i.i, -65
  br label %bb19.i.i.i

bb19.i.i.i:                                       ; preds = %bb18.i.i.i, %bb16.i.i.i
  %_7.sroa.0.0.in.i.i.i = phi i1 [ %23, %bb16.i.i.i ], [ %25, %bb18.i.i.i ]
  %data.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter.sroa.0.051
  %spec.select75 = select i1 %_7.sroa.0.0.in.i.i.i, ptr %data.i.i.i, ptr null
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i": ; preds = %bb19.i.i.i, %bb13.i.i.i
  %_0.sroa.0.0.i.i.i = phi ptr [ null, %bb13.i.i.i ], [ %spec.select75, %bb19.i.i.i ]
  %.not.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %bb3.i.i9, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE.exit", !prof !2635

bb3.i.i9:                                         ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i", %bb19.i.i.i.peel
  %iter.sroa.0.051.lcssa = phi i64 [ 0, %bb19.i.i.i.peel ], [ %iter.sroa.0.051, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
  %_23.lcssa = phi i64 [ %_0.i, %bb19.i.i.i.peel ], [ %_23, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
  %_8.i.lcssa = phi ptr [ %_8.i.peel, %bb19.i.i.i.peel ], [ %_8.i, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
  %len.i.lcssa = phi i64 [ %len.i.peel, %bb19.i.i.i.peel ], [ %len.i, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_8.i.lcssa, i64 noundef %len.i.lcssa, i64 noundef %iter.sroa.0.051.lcssa, i64 noundef %_23.lcssa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ca685516a45432c9ecfc325128ac9b4c) #31
          to label %.noexc10 unwind label %cleanup3.loopexit.split-lp

.noexc10:                                         ; preds = %bb3.i.i9
  unreachable

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE.exit": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !2636)
  call void @llvm.experimental.noalias.scope.decl(metadata !2638)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !2640
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %_0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc27 unwind label %cleanup3.loopexit.loopexit

bb11:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit.peel", %"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E.exit"
  %_4.i.i11 = load ptr, ptr %5, align 8, !alias.scope !2641, !nonnull !37, !noundef !37
  %len.i.i12 = load i64, ptr %6, align 8, !alias.scope !2641, !noundef !37
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2646
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2649
  %b.i.i = icmp samesign ult i64 %len.i.i12, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h594fa5ca3b51e285E.exit", label %bb7.i.i, !prof !2653

bb7.i.i:                                          ; preds = %bb11
  %b1.i.i = icmp samesign ult i64 %len.i.i12, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2653

bb10.i.i:                                         ; preds = %bb7.i.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hb21a17c31e7d60c9E(ptr noalias noundef nonnull align 8 %_4.i.i11, i64 noundef range(i64 0, 384307168202282326) %len.i.i12, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h594fa5ca3b51e285E.exit" unwind label %cleanup3.loopexit.split-lp

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd9613328857599b6E(ptr noalias noundef nonnull align 8 %_4.i.i11, i64 noundef range(i64 0, 384307168202282326) %len.i.i12, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h594fa5ca3b51e285E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h594fa5ca3b51e285E.exit": ; preds = %bb10.i.i, %bb11, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2646
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %len.i14 = load i64, ptr %6, align 8, !alias.scope !2654, !noundef !37
  %_4.not.i.i = icmp eq i64 %len.i14, 0
  br i1 %_4.not.i.i, label %panic.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h75f61264603f890aE.exit"

panic.i.i:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h594fa5ca3b51e285E.exit"
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_731aaa3b1d0e174abb75650cf8233bd4) #31
          to label %.noexc15 unwind label %cleanup3.loopexit.split-lp

.noexc15:                                         ; preds = %panic.i.i
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h75f61264603f890aE.exit": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h594fa5ca3b51e285E.exit"
  %_6.i = load ptr, ptr %5, align 8, !alias.scope !2654, !nonnull !37, !noundef !37
; invoke <alloc::string::String as core::clone::Clone>::clone
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h3201baa471bff1abE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %_6.i)
          to label %bb18 unwind label %cleanup3.loopexit.split-lp

bb18:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h75f61264603f890aE.exit"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %concat)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb18
  %26 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %concat)
          to label %bb23 unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %27 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE.exit.i": ; preds = %bb18
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %concat)
          to label %bb19 unwind label %cleanup1

bb19:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE.exit.i"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %concat)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf51955c50d115126E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %bb4.i unwind label %cleanup.i18

cleanup.i18:                                      ; preds = %bb19
  %28 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 8, i64 noundef 24)
          to label %bb24 unwind label %terminate.i19

bb4.i:                                            ; preds = %bb19
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 8, i64 noundef 24)
          to label %bb20 unwind label %cleanup

terminate.i19:                                    ; preds = %cleanup.i18
  %29 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30
  unreachable

bb20:                                             ; preds = %bb4.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit26" unwind label %cleanup.i.i22

cleanup.i.i22:                                    ; preds = %bb20
  %30 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i23

terminate.i.i23:                                  ; preds = %cleanup.i.i22
  %31 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30
  unreachable

common.resume:                                    ; preds = %bb24, %cleanup.i.i22
  %common.resume.op = phi { ptr, i32 } [ %30, %cleanup.i.i22 ], [ %.pn.pn, %bb24 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit26": ; preds = %bb20
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret void

.noexc27:                                         ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h990e5850e6ca3bbdE.exit"
  %_5.i.i.i.i = load i64, ptr %_4.i.i.i.i, align 8, !range !1479, !noalias !2640, !noundef !37
  %32 = trunc nuw i64 %_5.i.i.i.i to i1
  br i1 %32, label %bb3.i.i.i.i, label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE.exit", !prof !2635

bb3.i.i.i.i:                                      ; preds = %.noexc27, %.noexc27.peel
  %33 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 8
  %err.0.i.i.i.i = load i64, ptr %33, align 8, !range !1480, !noalias !2640, !noundef !37
  %34 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 16
  %err.1.i.i.i.i = load i64, ptr %34, align 8, !noalias !2640
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i.i, i64 %err.1.i.i.i.i) #32
          to label %.noexc28 unwind label %cleanup3.loopexit.split-lp

.noexc28:                                         ; preds = %bb3.i.i.i.i
  unreachable

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE.exit": ; preds = %.noexc27
  %this.0.i.i.i.i = load i64, ptr %13, align 8, !range !2576, !noalias !2640, !noundef !37
  %this.1.i.i.i.i = load ptr, ptr %14, align 8, !noalias !2640, !nonnull !37, !noundef !37
  %_7.i.i.i.i = icmp samesign ule i64 %_0.i, %this.0.i.i.i.i
  call void @llvm.assume(i1 %_7.i.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !2640
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %this.1.i.i.i.i, ptr nonnull readonly align 1 %_0.sroa.0.0.i.i.i, i64 range(i64 0, -9223372036854775808) %_0.i, i1 false), !noalias !2657
  store i64 %this.0.i.i.i.i, ptr %_19, align 8, !alias.scope !2658, !noalias !2624
  store ptr %this.1.i.i.i.i, ptr %bytes.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !2658, !noalias !2624
  store i64 %_0.i, ptr %bytes.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !2658, !noalias !2624
  %len.i.i29 = load i64, ptr %6, align 8, !alias.scope !2625, !noalias !2630, !noundef !37
  %self1.i.i = load i64, ptr %arr, align 8, !range !2576, !alias.scope !2625, !noalias !2630, !noundef !37
  %_4.i.i30 = icmp eq i64 %len.i.i29, %self1.i.i
  br i1 %_4.i.i30, label %bb1.i.i31, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit"

bb1.i.i31:                                        ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE.exit"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he6449fc15ab6cfeaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit" unwind label %cleanup.i.i32.loopexit, !noalias !2630

cleanup.i.i32.loopexit:                           ; preds = %bb1.i.i31
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.i.i32

cleanup.i.i32.loopexit.split-lp:                  ; preds = %bb1.i.i31.peel
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.i.i32

cleanup.i.i32:                                    ; preds = %cleanup.i.i32.loopexit.split-lp, %cleanup.i.i32.loopexit
  %lpad.phi73 = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.i.i32.loopexit ], [ %lpad.loopexit.split-lp72, %cleanup.i.i32.loopexit.split-lp ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_19) #33
          to label %cleanup3.body unwind label %terminate.i.i33

terminate.i.i33:                                  ; preds = %cleanup.i.i32
  %35 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h5086dd1086a82772E.exit": ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h75b533de7c3f914dE.exit", %bb1.i.i31
  %_15.i.i = load ptr, ptr %5, align 8, !alias.scope !2625, !noalias !2630, !nonnull !37, !noundef !37
  %end.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_15.i.i, i64 %len.i.i29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %end.i.i, ptr noundef nonnull align 8 dereferenceable(24) %_19, i64 24, i1 false)
  %36 = add i64 %len.i.i29, 1
  store i64 %36, ptr %6, align 8, !alias.scope !2625, !noalias !2630
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_19)
  %_0.i.i.i = icmp ult i64 %spec.select52, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select52, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb10, label %bb11, !llvm.loop !2659

terminate:                                        ; preds = %bb24, %bb23, %cleanup3.body
  %37 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #30
  unreachable
}
