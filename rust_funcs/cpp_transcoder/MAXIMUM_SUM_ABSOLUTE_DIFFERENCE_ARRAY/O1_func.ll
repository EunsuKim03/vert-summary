define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %is_less.i.i = alloca [0 x i8], align 1
  %final_sequence = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %final_sequence)
  store i64 0, ptr %final_sequence, align 8, !alias.scope !2606
  %0 = getelementptr inbounds nuw i8, ptr %final_sequence, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8, !alias.scope !2606
  %1 = getelementptr inbounds nuw i8, ptr %final_sequence, i64 16
  store i64 0, ptr %1, align 8, !alias.scope !2606
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2609
  %b.i.i = icmp samesign ult i64 %a.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha9b21fd1c0c7734eE.exit", label %bb7.i.i, !prof !2600

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %a.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2600

bb10.i.i:                                         ; preds = %bb7.i.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hafe5787a31fd95b4E(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 1 %is_less.i.i)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha9b21fd1c0c7734eE.exit" unwind label %cleanup.loopexit.split-lp

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17ha0f8b99755ea906fE(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha9b21fd1c0c7734eE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha9b21fd1c0c7734eE.exit": ; preds = %bb10.i.i, %start, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2609
  %_7 = sdiv i32 %n, 2
  %_0.i.i.i59 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i59, label %bb7, label %bb8

cleanup.loopexit:                                 ; preds = %bb1.i.i, %bb1.i.i46
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %panic.i.i.invoke, %panic.invoke, %bb10.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %final_sequence, i64 noundef 4, i64 noundef 4)
          to label %bb26 unwind label %terminate

bb7:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha9b21fd1c0c7734eE.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h86abdcf9b51490c2E.exit48"
  %spec.select61 = phi i32 [ %spec.select, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h86abdcf9b51490c2E.exit48" ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha9b21fd1c0c7734eE.exit" ]
  %iter.sroa.0.060 = phi i32 [ %spec.select61, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h86abdcf9b51490c2E.exit48" ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha9b21fd1c0c7734eE.exit" ]
  %_16 = zext nneg i32 %iter.sroa.0.060 to i64
  %_18 = icmp samesign ugt i64 %a.1, %_16
  br i1 %_18, label %bb9, label %panic.invoke

bb8:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h86abdcf9b51490c2E.exit48", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17ha9b21fd1c0c7734eE.exit"
  %_29 = add i32 %n, -1
  %_28 = sext i32 %_29 to i64
  %_0.i.i.i1262.not = icmp eq i32 %_29, 0
  br i1 %_0.i.i.i1262.not, label %bb17, label %bb16.lr.ph

bb16.lr.ph:                                       ; preds = %bb8
  %len.i = load i64, ptr %1, align 8, !alias.scope !2612, !noalias !2615, !noundef !27
  %_6.i = load ptr, ptr %0, align 8, !nonnull !27
  br label %bb16

bb16:                                             ; preds = %bb16.lr.ph, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE.exit37"
  %spec.select5066 = phi i64 [ 1, %bb16.lr.ph ], [ %spec.select50, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE.exit37" ]
  %maximum_sum.sroa.0.065 = phi i32 [ 0, %bb16.lr.ph ], [ %6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE.exit37" ]
  %iter1.sroa.0.064 = phi i64 [ 0, %bb16.lr.ph ], [ %spec.select5066, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE.exit37" ]
  %_4.i.i15 = icmp ult i64 %iter1.sroa.0.064, %len.i
  br i1 %_4.i.i15, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE.exit", label %panic.i.i.invoke

panic.i.i.invoke:                                 ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE.exit", %bb16, %bb17
  %2 = phi i64 [ %_28, %bb17 ], [ %_44, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE.exit" ], [ %iter1.sroa.0.064, %bb16 ]
  %3 = phi i64 [ %len.i17, %bb17 ], [ %len.i, %bb16 ], [ %len.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE.exit" ]
  %4 = phi ptr [ @alloc_62ab56ba51a7eee5b63ca60b5c4609cd, %bb17 ], [ @alloc_8d65dd8dce2671cc8ce691df9c1904a7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE.exit" ], [ @alloc_266bd23a1387e20541653db12889ae4a, %bb16 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #24
          to label %panic.i.i.cont unwind label %cleanup.loopexit.split-lp

panic.i.i.cont:                                   ; preds = %panic.i.i.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE.exit": ; preds = %bb16
  %_44 = add nuw i64 %iter1.sroa.0.064, 1
  %_4.i.i32 = icmp ult i64 %_44, %len.i
  br i1 %_4.i.i32, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE.exit37", label %panic.i.i.invoke

bb17:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE.exit37", %bb8
  %maximum_sum.sroa.0.0.lcssa = phi i32 [ 0, %bb8 ], [ %6, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE.exit37" ]
  %len.i17 = load i64, ptr %1, align 8, !alias.scope !2617, !noalias !2620, !noundef !27
  %_4.i.i18 = icmp ugt i64 %len.i17, %_28
  br i1 %_4.i.i18, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE.exit23", label %panic.i.i.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE.exit23": ; preds = %bb17
  %_6.i20 = load ptr, ptr %0, align 8, !alias.scope !2617, !noalias !2620, !nonnull !27, !noundef !27
  %_0.i.i21 = getelementptr inbounds nuw i32, ptr %_6.i20, i64 %_28
  %_48 = load i32, ptr %_0.i.i21, align 4, !noundef !27
  %_51 = load i32, ptr %_6.i20, align 4, !noundef !27
  %_47 = sub i32 %_48, %_51
  %_0.sroa.0.0.i = call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %_47, i1 false)
  %5 = add i32 %_0.sroa.0.0.i, %maximum_sum.sroa.0.0.lcssa
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %final_sequence, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %final_sequence)
  ret i32 %5

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE.exit37": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7d17882d62bd0e2dE.exit"
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %iter1.sroa.0.064
  %_38 = load i32, ptr %_0.i.i, align 4, !noundef !27
  %_0.i.i35 = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_44
  %_41 = load i32, ptr %_0.i.i35, align 4, !noundef !27
  %_37 = sub i32 %_38, %_41
  %_0.sroa.0.0.i38 = call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %_37, i1 false)
  %6 = add i32 %_0.sroa.0.0.i38, %maximum_sum.sroa.0.065
  %_0.i.i.i12 = icmp ult i64 %spec.select5066, %_28
  %_0.i1.i.i = zext i1 %_0.i.i.i12 to i64
  %spec.select50 = add nuw i64 %spec.select5066, %_0.i1.i.i
  br i1 %_0.i.i.i12, label %bb16, label %bb17

bb9:                                              ; preds = %bb7
  %7 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_16
  %_15 = load i32, ptr %7, align 4, !noundef !27
  %len.i.i = load i64, ptr %1, align 8, !alias.scope !2622, !noundef !27
  %self1.i.i = load i64, ptr %final_sequence, align 8, !range !2599, !alias.scope !2622, !noundef !27
  %_4.i.i39 = icmp eq i64 %len.i.i, %self1.i.i
  br i1 %_4.i.i39, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h86abdcf9b51490c2E.exit"

bb1.i.i:                                          ; preds = %bb9
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h444c6fbf2c23cfe8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %final_sequence)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h86abdcf9b51490c2E.exit" unwind label %cleanup.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h86abdcf9b51490c2E.exit": ; preds = %bb1.i.i, %bb9
  %_15.i.i = load ptr, ptr %0, align 8, !alias.scope !2622, !nonnull !27, !noundef !27
  %end.i.i = getelementptr inbounds nuw i32, ptr %_15.i.i, i64 %len.i.i
  store i32 %_15, ptr %end.i.i, align 4
  %8 = add i64 %len.i.i, 1
  store i64 %8, ptr %1, align 8, !alias.scope !2622
  %9 = xor i32 %iter.sroa.0.060, -1
  %_23 = add i32 %n, %9
  %_22 = sext i32 %_23 to i64
  %_25 = icmp ugt i64 %a.1, %_22
  br i1 %_25, label %bb11, label %panic.invoke

panic.invoke:                                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h86abdcf9b51490c2E.exit", %bb7
  %10 = phi i64 [ %_16, %bb7 ], [ %_22, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h86abdcf9b51490c2E.exit" ]
  %11 = phi ptr [ @alloc_b00172e95c940ccb1ed768019527c186, %bb7 ], [ @alloc_21a1721c82ced171f22487ef50df60e1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h86abdcf9b51490c2E.exit" ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %10, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %11) #25
          to label %panic.cont unwind label %cleanup.loopexit.split-lp

panic.cont:                                       ; preds = %panic.invoke
  unreachable

bb11:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h86abdcf9b51490c2E.exit"
  %12 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_22
  %_21 = load i32, ptr %12, align 4, !noundef !27
  %self1.i.i42 = load i64, ptr %final_sequence, align 8, !range !2599, !alias.scope !2627, !noundef !27
  %_4.i.i43 = icmp eq i64 %8, %self1.i.i42
  br i1 %_4.i.i43, label %bb1.i.i46, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h86abdcf9b51490c2E.exit48"

bb1.i.i46:                                        ; preds = %bb11
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h444c6fbf2c23cfe8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %final_sequence)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h86abdcf9b51490c2E.exit48" unwind label %cleanup.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h86abdcf9b51490c2E.exit48": ; preds = %bb1.i.i46, %bb11
  %_15.i.i44 = load ptr, ptr %0, align 8, !alias.scope !2627, !nonnull !27, !noundef !27
  %end.i.i45 = getelementptr inbounds nuw i32, ptr %_15.i.i44, i64 %8
  store i32 %_21, ptr %end.i.i45, align 4
  %13 = add i64 %len.i.i, 2
  store i64 %13, ptr %1, align 8, !alias.scope !2627
  %_0.i.i.i = icmp slt i32 %spec.select61, %_7
  %14 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select61, %14
  br i1 %_0.i.i.i, label %bb7, label %bb8

terminate:                                        ; preds = %cleanup
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb26:                                             ; preds = %cleanup
  resume { ptr, i32 } %lpad.phi
}
