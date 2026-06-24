define void @f_gold(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %is_less.i.i = alloca [0 x i8], align 1
  %_4.i.i.i.i = alloca [24 x i8], align 8
  %_4.i.i = alloca [24 x i8], align 8
  %res = alloca [24 x i8], align 8
  %_26 = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !2679, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_6 = add nuw i64 %_0.i, 1
  %_5 = mul i64 %_6, %_0.i
  %sub_count9 = lshr i64 %_5, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2682)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2682
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef range(i64 0, -9223372036854775808) %sub_count9, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %cleanup

bb33:                                             ; preds = %cleanup.i, %cleanup, %bb32
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb32 ], [ %1, %cleanup ], [ %12, %cleanup.i ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"(ptr noalias noundef align 8 dereferenceable(24) %s) #34
          to label %common.resume unwind label %terminate

cleanup:                                          ; preds = %bb4.i, %bb3.i.i, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %bb33

.noexc:                                           ; preds = %start
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1527, !noalias !2682, !noundef !37
  %2 = trunc nuw i64 %_5.i.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %3, align 8, !range !1528, !noalias !2682, !noundef !37
  %4 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %2, label %bb3.i.i, label %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hc928b7f9ad73e3d1E.exit", !prof !1529

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %4, align 8, !noalias !2682
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #33
          to label %.noexc12 unwind label %cleanup

.noexc12:                                         ; preds = %bb3.i.i
  unreachable

"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hc928b7f9ad73e3d1E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %4, align 8, !noalias !2682, !nonnull !37, !noundef !37
  %_7.i.i = icmp samesign ule i64 %sub_count9, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2682
  store i64 %err.0.i.i, ptr %arr, align 8, !alias.scope !2682
  %5 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  store ptr %this.1.i.i, ptr %5, align 8, !alias.scope !2682
  %6 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  store i64 0, ptr %6, align 8, !alias.scope !2682
  %_0.i.i.i73.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i73.not, label %bb8, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hc928b7f9ad73e3d1E.exit"
  %7 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 16
  %bytes.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_26, i64 8
  %bytes.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_26, i64 16
  br label %bb7

bb32:                                             ; preds = %cleanup3.loopexit, %cleanup3.loopexit.split-lp, %cleanup.i.i42, %cleanup4
  %.pn = phi { ptr, i32 } [ %lpad.phi, %cleanup4 ], [ %26, %cleanup.i.i42 ], [ %lpad.loopexit50, %cleanup3.loopexit ], [ %lpad.loopexit.split-lp51, %cleanup3.loopexit.split-lp ]
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17he3d388727106a310E"(ptr noalias noundef align 8 dereferenceable(24) %arr) #34
          to label %bb33 unwind label %terminate

cleanup3.loopexit:                                ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfe698e6e582fce30E.exit"
  %lpad.loopexit50 = landingpad { ptr, i32 }
          cleanup
  br label %bb32

cleanup3.loopexit.split-lp:                       ; preds = %bb10.i.i, %bb3.i.i35, %bb3.i.i.i.i
  %lpad.loopexit.split-lp51 = landingpad { ptr, i32 }
          cleanup
  br label %bb32

bb4.loopexit:                                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE.exit", %bb7
  %_0.i.i.i = icmp ult i64 %spec.select77, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select77, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb7, label %bb8

bb7:                                              ; preds = %bb7.lr.ph, %bb4.loopexit
  %spec.select77 = phi i64 [ 1, %bb7.lr.ph ], [ %spec.select, %bb4.loopexit ]
  %iter.sroa.0.075 = phi i64 [ 0, %bb7.lr.ph ], [ %spec.select77, %bb4.loopexit ]
  %_18 = sub nuw nsw i64 %_0.i, %iter.sroa.0.075
  %_11.i.i.i = icmp eq i64 %iter.sroa.0.075, 0
  %_0.i.not.i.i114.not = icmp eq i64 %_0.i, %iter.sroa.0.075
  br i1 %_0.i.not.i.i114.not, label %bb4.loopexit, label %bb13.lr.ph

bb13.lr.ph:                                       ; preds = %bb7
  %_0.i3.i.i115 = icmp samesign ult i64 %_18, 2
  %iter1.sroa.7.1120 = zext i1 %_0.i3.i.i115 to i8
  %iter1.sroa.0.1119 = select i1 %_0.i3.i.i115, i64 1, i64 2
  br label %bb13

bb8:                                              ; preds = %bb4.loopexit, %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hc928b7f9ad73e3d1E.exit"
  %_4.i.i14 = load ptr, ptr %5, align 8, !alias.scope !2685, !nonnull !37, !noundef !37
  %len.i.i = load i64, ptr %6, align 8, !alias.scope !2685, !noundef !37
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2690
  %b.i.i = icmp samesign ult i64 %len.i.i, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h90c08e9f316f5eb7E.exit", label %bb7.i.i, !prof !2693

bb7.i.i:                                          ; preds = %bb8
  %b1.i.i = icmp samesign ult i64 %len.i.i, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2693

bb10.i.i:                                         ; preds = %bb7.i.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17had053cf2c77a0b49E(ptr noalias noundef nonnull align 8 %_4.i.i14, i64 noundef range(i64 0, 384307168202282326) %len.i.i, ptr noalias noundef nonnull align 1 %is_less.i.i)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h90c08e9f316f5eb7E.exit" unwind label %cleanup3.loopexit.split-lp

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h5881bc39b88732acE(ptr noalias noundef nonnull align 8 %_4.i.i14, i64 noundef range(i64 0, 384307168202282326) %len.i.i, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h90c08e9f316f5eb7E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h90c08e9f316f5eb7E.exit": ; preds = %bb10.i.i, %bb8, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2690
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res)
  store i64 0, ptr %res, align 8, !alias.scope !2694
  %_1.sroa.4.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %res, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !2694
  %_1.sroa.5.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %res, i64 16
  store i64 0, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !2694
  br label %bb22

cleanup4.loopexit:                                ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha34fe7f7b17dd054E.exit"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup4

cleanup4.loopexit.split-lp:                       ; preds = %panic.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup4

cleanup4:                                         ; preds = %cleanup4.loopexit.split-lp, %cleanup4.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup4.loopexit ], [ %lpad.loopexit.split-lp, %cleanup4.loopexit.split-lp ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"(ptr noalias noundef align 8 dereferenceable(24) %res) #34
          to label %bb32 unwind label %terminate

bb22:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha34fe7f7b17dd054E.exit", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h90c08e9f316f5eb7E.exit"
  %iter2.sroa.0.0 = phi i64 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h90c08e9f316f5eb7E.exit" ], [ %spec.select46, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha34fe7f7b17dd054E.exit" ]
  %_0.i.i.i19 = icmp ult i64 %iter2.sroa.0.0, %sub_count9
  %_0.i1.i.i22 = zext i1 %_0.i.i.i19 to i64
  %spec.select46 = add nuw i64 %iter2.sroa.0.0, %_0.i1.i.i22
  br i1 %_0.i.i.i19, label %bb24, label %bb25

bb24:                                             ; preds = %bb22
  %len.i = load i64, ptr %6, align 8, !alias.scope !2697, !noundef !37
  %_4.i.i24 = icmp ult i64 %iter2.sroa.0.0, %len.i
  br i1 %_4.i.i24, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha34fe7f7b17dd054E.exit", label %panic.i.i

panic.i.i:                                        ; preds = %bb24
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter2.sroa.0.0, i64 noundef range(i64 0, 384307168202282326) %len.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4cce44244d9639ad41a74bd16b875a27) #32
          to label %.noexc25 unwind label %cleanup4.loopexit.split-lp

.noexc25:                                         ; preds = %panic.i.i
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha34fe7f7b17dd054E.exit": ; preds = %bb24
  %_6.i = load ptr, ptr %5, align 8, !alias.scope !2697, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_6.i, i64 %iter2.sroa.0.0
  %10 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i.i = load ptr, ptr %10, align 8, !alias.scope !2700, !nonnull !37, !noundef !37
  %11 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i.i27 = load i64, ptr %11, align 8, !alias.scope !2700, !noundef !37
  %_9.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i27
; invoke <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %res, ptr noundef nonnull readonly align 1 %_6.i.i, ptr noundef nonnull readonly %_9.i)
          to label %bb22 unwind label %cleanup4.loopexit

bb25:                                             ; preds = %bb22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %res, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a1990cca6413e04E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %bb4.i unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb25
  %12 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 8, i64 noundef 24)
          to label %bb33 unwind label %terminate.i

bb4.i:                                            ; preds = %bb25
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 8, i64 noundef 24)
          to label %bb29 unwind label %cleanup

terminate.i:                                      ; preds = %cleanup.i
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

bb29:                                             ; preds = %bb4.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb29
  %14 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

common.resume:                                    ; preds = %bb33, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %14, %cleanup.i.i ], [ %.pn.pn, %bb33 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit": ; preds = %bb29
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
  ret void

terminate:                                        ; preds = %bb33, %bb32, %cleanup4
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

bb13:                                             ; preds = %bb13.lr.ph, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE.exit"
  %_0.sroa.3.0.i.i123 = phi i64 [ 1, %bb13.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE.exit" ]
  %iter1.sroa.7.1122 = phi i8 [ %iter1.sroa.7.1120, %bb13.lr.ph ], [ %iter1.sroa.7.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE.exit" ]
  %iter1.sroa.0.1121 = phi i64 [ %iter1.sroa.0.1119, %bb13.lr.ph ], [ %iter1.sroa.0.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE.exit" ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_26)
  %_30 = add i64 %_0.sroa.3.0.i.i123, %iter.sroa.0.075
  call void @llvm.experimental.noalias.scope.decl(metadata !2705)
  %_8.i = load ptr, ptr %7, align 8, !alias.scope !2705, !nonnull !37, !noundef !37
  %len.i34 = load i64, ptr %0, align 8, !alias.scope !2705, !noundef !37
  %_3.not.i.i.i = icmp ugt i64 %iter.sroa.0.075, %_30
  br i1 %_3.not.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i", label %bb1.i.i.i

bb1.i.i.i:                                        ; preds = %bb13
  br i1 %_11.i.i.i, label %bb2.i.i.i, label %bb9.i.i.i

bb9.i.i.i:                                        ; preds = %bb1.i.i.i
  %_12.not.i.i.i = icmp ult i64 %iter.sroa.0.075, %len.i34
  br i1 %_12.not.i.i.i, label %bb12.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb9.i.i.i
  %17 = icmp eq i64 %iter.sroa.0.075, %len.i34
  br label %bb13.i.i.i

bb12.i.i.i:                                       ; preds = %bb9.i.i.i
  %18 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter.sroa.0.075
  %self.i.i.i = load i8, ptr %18, align 1, !alias.scope !2708, !noalias !2705, !noundef !37
  %19 = icmp sgt i8 %self.i.i.i, -65
  br label %bb13.i.i.i

bb13.i.i.i:                                       ; preds = %bb12.i.i.i, %bb10.i.i.i
  %_6.sroa.0.0.in.i.i.i = phi i1 [ %17, %bb10.i.i.i ], [ %19, %bb12.i.i.i ]
  br i1 %_6.sroa.0.0.in.i.i.i, label %bb2.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb2.i.i.i:                                        ; preds = %bb13.i.i.i, %bb1.i.i.i
  %_18.i.i.i = icmp eq i64 %_30, 0
  br i1 %_18.i.i.i, label %bb22.i.i.i, label %bb15.i.i.i

bb15.i.i.i:                                       ; preds = %bb2.i.i.i
  %_19.not.i.i.i = icmp ult i64 %_30, %len.i34
  br i1 %_19.not.i.i.i, label %bb18.i.i.i, label %bb16.i.i.i

bb16.i.i.i:                                       ; preds = %bb15.i.i.i
  %20 = icmp eq i64 %_30, %len.i34
  br label %bb19.i.i.i

bb18.i.i.i:                                       ; preds = %bb15.i.i.i
  %21 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_30
  %self2.i.i.i = load i8, ptr %21, align 1, !alias.scope !2708, !noalias !2705, !noundef !37
  %22 = icmp sgt i8 %self2.i.i.i, -65
  br label %bb19.i.i.i

bb19.i.i.i:                                       ; preds = %bb18.i.i.i, %bb16.i.i.i
  %_7.sroa.0.0.in.i.i.i = phi i1 [ %20, %bb16.i.i.i ], [ %22, %bb18.i.i.i ]
  br i1 %_7.sroa.0.0.in.i.i.i, label %bb22.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb22.i.i.i:                                       ; preds = %bb19.i.i.i, %bb2.i.i.i
  %data.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter.sroa.0.075
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i": ; preds = %bb22.i.i.i, %bb19.i.i.i, %bb13.i.i.i, %bb13
  %_0.sroa.0.0.i.i.i = phi ptr [ %data.i.i.i, %bb22.i.i.i ], [ null, %bb19.i.i.i ], [ null, %bb13.i.i.i ], [ null, %bb13 ]
  %.not.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %bb3.i.i35, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfe698e6e582fce30E.exit", !prof !1529

bb3.i.i35:                                        ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_8.i, i64 noundef %len.i34, i64 noundef %iter.sroa.0.075, i64 noundef %_30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_04774e36529a2f0ec64e4c14b859aaab) #32
          to label %.noexc36 unwind label %cleanup3.loopexit.split-lp

.noexc36:                                         ; preds = %bb3.i.i35
  unreachable

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfe698e6e582fce30E.exit": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !2713)
  call void @llvm.experimental.noalias.scope.decl(metadata !2716)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !2719
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %_0.sroa.3.0.i.i123, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc37 unwind label %cleanup3.loopexit

.noexc37:                                         ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfe698e6e582fce30E.exit"
  %_5.i.i.i.i = load i64, ptr %_4.i.i.i.i, align 8, !range !1527, !noalias !2719, !noundef !37
  %23 = trunc nuw i64 %_5.i.i.i.i to i1
  br i1 %23, label %bb3.i.i.i.i, label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h861ff246b96a8bb3E.exit", !prof !1529

bb3.i.i.i.i:                                      ; preds = %.noexc37
  %24 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 8
  %err.0.i.i.i.i = load i64, ptr %24, align 8, !range !1528, !noalias !2719, !noundef !37
  %25 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 16
  %err.1.i.i.i.i = load i64, ptr %25, align 8, !noalias !2719
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i.i, i64 %err.1.i.i.i.i) #33
          to label %.noexc38 unwind label %cleanup3.loopexit.split-lp

.noexc38:                                         ; preds = %bb3.i.i.i.i
  unreachable

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h861ff246b96a8bb3E.exit": ; preds = %.noexc37
  %this.0.i.i.i.i = load i64, ptr %8, align 8, !range !2673, !noalias !2719, !noundef !37
  %this.1.i.i.i.i = load ptr, ptr %9, align 8, !noalias !2719, !nonnull !37, !noundef !37
  %_7.i.i.i.i = icmp samesign ule i64 %_0.sroa.3.0.i.i123, %this.0.i.i.i.i
  call void @llvm.assume(i1 %_7.i.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !2719
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %this.1.i.i.i.i, ptr nonnull readonly align 1 %_0.sroa.0.0.i.i.i, i64 range(i64 0, -9223372036854775808) %_0.sroa.3.0.i.i123, i1 false), !noalias !2725
  store i64 %this.0.i.i.i.i, ptr %_26, align 8, !alias.scope !2726, !noalias !2727
  store ptr %this.1.i.i.i.i, ptr %bytes.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !2726, !noalias !2727
  store i64 %_0.sroa.3.0.i.i123, ptr %bytes.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !2726, !noalias !2727
  %len.i.i39 = load i64, ptr %6, align 8, !alias.scope !2728, !noalias !2733, !noundef !37
  %self1.i.i = load i64, ptr %arr, align 8, !range !2673, !alias.scope !2728, !noalias !2733, !noundef !37
  %_4.i.i40 = icmp eq i64 %len.i.i39, %self1.i.i
  br i1 %_4.i.i40, label %bb1.i.i41, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE.exit"

bb1.i.i41:                                        ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h861ff246b96a8bb3E.exit"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he6449fc15ab6cfeaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE.exit" unwind label %cleanup.i.i42, !noalias !2733

cleanup.i.i42:                                    ; preds = %bb1.i.i41
  %26 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_26) #34
          to label %bb32 unwind label %terminate.i.i43

terminate.i.i43:                                  ; preds = %cleanup.i.i42
  %27 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hd2ba8b311de680cfE.exit": ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h861ff246b96a8bb3E.exit", %bb1.i.i41
  %_15.i.i = load ptr, ptr %5, align 8, !alias.scope !2728, !noalias !2733, !nonnull !37, !noundef !37
  %end.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_15.i.i, i64 %len.i.i39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %end.i.i, ptr noundef nonnull align 8 dereferenceable(24) %_26, i64 24, i1 false)
  %28 = add i64 %len.i.i39, 1
  store i64 %28, ptr %6, align 8, !alias.scope !2728, !noalias !2733
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_26)
  %_10.i.i = trunc nuw i8 %iter1.sroa.7.1122 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter1.sroa.0.1121, %_18
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter1.sroa.0.1121, %_18
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select48 = zext i1 %narrow to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.1121, %spec.select48
  %29 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter1.sroa.7.1 = select i1 %29, i8 %iter1.sroa.7.1122, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter1.sroa.0.1121
  br i1 %or.cond, label %bb4.loopexit, label %bb13
}
