define void @f_gold(ptr noalias noundef nonnull align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i20 = alloca [8 x i8], align 8
  %odd_arr = alloca [24 x i8], align 8
  %even_arr = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %even_arr)
  store i64 0, ptr %even_arr, align 8, !alias.scope !3896
  %0 = getelementptr inbounds nuw i8, ptr %even_arr, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8, !alias.scope !3896
  %1 = getelementptr inbounds nuw i8, ptr %even_arr, i64 16
  store i64 0, ptr %1, align 8, !alias.scope !3896
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %odd_arr)
  store i64 0, ptr %odd_arr, align 8, !alias.scope !3899
  %2 = getelementptr inbounds nuw i8, ptr %odd_arr, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %2, align 8, !alias.scope !3899
  %3 = getelementptr inbounds nuw i8, ptr %odd_arr, i64 16
  store i64 0, ptr %3, align 8, !alias.scope !3899
  %_0.i.i.i72 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i72, label %bb7, label %bb8

bb39:                                             ; preds = %cleanup3, %cleanup
  %.pn = phi { ptr, i32 } [ %4, %cleanup ], [ %lpad.phi, %cleanup3 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %even_arr, i64 noundef 4, i64 noundef 4)
          to label %bb40 unwind label %terminate

cleanup:                                          ; preds = %bb33
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb39

cleanup3.loopexit:                                ; preds = %bb1.i.i, %bb1.i.i62
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup3

cleanup3.loopexit.split-lp:                       ; preds = %panic.invoke, %bb10.i.i, %bb10.i.i24
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup3

cleanup3:                                         ; preds = %cleanup3.loopexit.split-lp, %cleanup3.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup3.loopexit ], [ %lpad.loopexit.split-lp, %cleanup3.loopexit.split-lp ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %odd_arr, i64 noundef 4, i64 noundef 4)
          to label %bb39 unwind label %terminate

bb7:                                              ; preds = %start, %bb15
  %spec.select74 = phi i32 [ %spec.select, %bb15 ], [ 1, %start ]
  %iter.sroa.0.073 = phi i32 [ %spec.select74, %bb15 ], [ 0, %start ]
  %5 = and i32 %iter.sroa.0.073, 1
  %_12 = icmp eq i32 %5, 0
  %_17 = zext nneg i32 %iter.sroa.0.073 to i64
  %_19 = icmp samesign ugt i64 %arr.1, %_17
  br i1 %_12, label %bb9, label %bb12

bb8:                                              ; preds = %bb15, %start
  %_4.i.i17 = load ptr, ptr %0, align 8, !alias.scope !3902, !nonnull !27, !noundef !27
  %len.i.i = load i64, ptr %1, align 8, !alias.scope !3902, !noundef !27
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i), !noalias !3907
  %b.i.i = icmp samesign ult i64 %len.i.i, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h5c7104025582fc03E.exit", label %bb7.i.i, !prof !3890

bb7.i.i:                                          ; preds = %bb8
  %b1.i.i = icmp samesign ult i64 %len.i.i, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !3890

bb10.i.i:                                         ; preds = %bb7.i.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h12fba252b83c9bb7E(ptr noalias noundef nonnull align 4 %_4.i.i17, i64 noundef range(i64 0, 2305843009213693952) %len.i.i, ptr noalias noundef nonnull align 1 %compare.i)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h5c7104025582fc03E.exit" unwind label %cleanup3.loopexit.split-lp

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h21767f56d37cf932E(ptr noalias noundef nonnull align 4 %_4.i.i17, i64 noundef range(i64 0, 2305843009213693952) %len.i.i, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h5c7104025582fc03E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h5c7104025582fc03E.exit": ; preds = %bb10.i.i, %bb8, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i), !noalias !3907
  %_4.i.i18 = load ptr, ptr %2, align 8, !alias.scope !3910, !nonnull !27, !noundef !27
  %len.i.i19 = load i64, ptr %3, align 8, !alias.scope !3910, !noundef !27
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i20), !noalias !3915
  store ptr %compare.i, ptr %is_less.i.i20, align 8, !noalias !3918
  %b.i.i21 = icmp samesign ult i64 %len.i.i19, 2
  br i1 %b.i.i21, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E.exit", label %bb7.i.i22, !prof !3890

bb7.i.i22:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h5c7104025582fc03E.exit"
  %b1.i.i23 = icmp samesign ult i64 %len.i.i19, 21
  br i1 %b1.i.i23, label %bb9.i.i25, label %bb10.i.i24, !prof !3890

bb10.i.i24:                                       ; preds = %bb7.i.i22
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17haeaae89998e12910E(ptr noalias noundef nonnull align 4 %_4.i.i18, i64 noundef range(i64 0, 2305843009213693952) %len.i.i19, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i20)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E.exit" unwind label %cleanup3.loopexit.split-lp

bb9.i.i25:                                        ; preds = %bb7.i.i22
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h66541561315623d5E(ptr noalias noundef nonnull align 4 %_4.i.i18, i64 noundef range(i64 0, 2305843009213693952) %len.i.i19, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E.exit": ; preds = %bb10.i.i24, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h5c7104025582fc03E.exit", %bb9.i.i25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i20), !noalias !3915
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_0.i = load i64, ptr %1, align 8, !alias.scope !3922, !noundef !27
  %_2.i = icmp ult i64 %_0.i, 2305843009213693952
  call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i3075.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i3075.not, label %bb25, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit.lr.ph"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit.lr.ph": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E.exit"
  %_6.i = load ptr, ptr %0, align 8, !nonnull !27
  br label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit.lr.ph", %bb27
  %i.sroa.0.078 = phi i64 [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit.lr.ph" ], [ %12, %bb27 ]
  %exitcond.not = icmp eq i64 %i.sroa.0.078, %arr.1
  br i1 %exitcond.not, label %panic.invoke, label %bb27

bb25:                                             ; preds = %bb27, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E.exit"
  %i.sroa.0.0.lcssa = phi i64 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E.exit" ], [ %12, %bb27 ]
  %_0.i35 = load i64, ptr %3, align 8, !alias.scope !3925, !noundef !27
  %_2.i36 = icmp ult i64 %_0.i35, 2305843009213693952
  call void @llvm.assume(i1 %_2.i36)
  %_0.i.i.i4080.not = icmp eq i64 %_0.i35, 0
  br i1 %_0.i.i.i4080.not, label %bb33, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51.lr.ph"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51.lr.ph": ; preds = %bb25
  %_6.i48 = load ptr, ptr %2, align 8, !nonnull !27
  %6 = add i64 %i.sroa.0.0.lcssa, %_0.i35
  br label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51.lr.ph", %bb35
  %spec.select6884 = phi i64 [ 1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51.lr.ph" ], [ %spec.select68, %bb35 ]
  %i.sroa.0.183 = phi i64 [ %i.sroa.0.0.lcssa, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51.lr.ph" ], [ %8, %bb35 ]
  %iter2.sroa.0.082 = phi i64 [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51.lr.ph" ], [ %spec.select6884, %bb35 ]
  %_62 = icmp samesign ult i64 %i.sroa.0.183, %arr.1
  br i1 %_62, label %bb35, label %panic.invoke

bb33:                                             ; preds = %bb35, %bb25
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %odd_arr, i64 noundef 4, i64 noundef 4)
          to label %bb36 unwind label %cleanup

bb36:                                             ; preds = %bb33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %odd_arr)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %even_arr, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %even_arr)
  ret void

bb35:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51"
  %_0.i.i49 = getelementptr inbounds nuw i32, ptr %_6.i48, i64 %iter2.sroa.0.082
  %_57 = load i32, ptr %_0.i.i49, align 4, !noundef !27
  %7 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %i.sroa.0.183
  store i32 %_57, ptr %7, align 4
  %8 = add nuw nsw i64 %i.sroa.0.183, 1
  %_0.i.i.i40 = icmp ult i64 %spec.select6884, %_0.i35
  %_0.i1.i.i43 = zext i1 %_0.i.i.i40 to i64
  %spec.select68 = add nuw i64 %spec.select6884, %_0.i1.i.i43
  %exitcond88.not = icmp eq i64 %8, %6
  br i1 %exitcond88.not, label %bb33, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51"

panic.invoke:                                     ; preds = %bb9, %bb12, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51"
  %9 = phi i64 [ %i.sroa.0.183, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51" ], [ %i.sroa.0.078, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit" ], [ %_17, %bb12 ], [ %_17, %bb9 ]
  %10 = phi ptr [ @alloc_8ff914f1831e33925cf29190c60b0739, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51" ], [ @alloc_743f2cefaccb6d94c89870124217d1ff, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit" ], [ @alloc_82fa06a248ba2287581da2665aa4e248, %bb9 ], [ @alloc_e63ffa31ad6e0404fd60d280d854c254, %bb12 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %9, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #25
          to label %panic.cont unwind label %cleanup3.loopexit.split-lp

panic.cont:                                       ; preds = %panic.invoke
  unreachable

bb27:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit"
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %i.sroa.0.078
  %_42 = load i32, ptr %_0.i.i, align 4, !noundef !27
  %11 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %i.sroa.0.078
  store i32 %_42, ptr %11, align 4
  %12 = add nuw nsw i64 %i.sroa.0.078, 1
  %exitcond87.not = icmp eq i64 %12, %_0.i
  br i1 %exitcond87.not, label %bb25, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit"

bb12:                                             ; preds = %bb7
  br i1 %_19, label %bb13, label %panic.invoke

bb9:                                              ; preds = %bb7
  br i1 %_19, label %bb10, label %panic.invoke

bb13:                                             ; preds = %bb12
  %13 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_17
  %_22 = load i32, ptr %13, align 4, !noundef !27
  %len.i.i54 = load i64, ptr %3, align 8, !alias.scope !3928, !noundef !27
  %self1.i.i = load i64, ptr %odd_arr, align 8, !range !3889, !alias.scope !3928, !noundef !27
  %_4.i.i55 = icmp eq i64 %len.i.i54, %self1.i.i
  br i1 %_4.i.i55, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E.exit"

bb1.i.i:                                          ; preds = %bb13
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h539a5665f9650300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %odd_arr)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E.exit" unwind label %cleanup3.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E.exit": ; preds = %bb1.i.i, %bb13
  %_15.i.i = load ptr, ptr %2, align 8, !alias.scope !3928, !nonnull !27, !noundef !27
  %end.i.i = getelementptr inbounds nuw i32, ptr %_15.i.i, i64 %len.i.i54
  store i32 %_22, ptr %end.i.i, align 4
  %14 = add i64 %len.i.i54, 1
  store i64 %14, ptr %3, align 8, !alias.scope !3928
  br label %bb15

bb15:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E.exit64", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E.exit"
  %_0.i.i.i = icmp slt i32 %spec.select74, %n
  %15 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select74, %15
  br i1 %_0.i.i.i, label %bb7, label %bb8

bb10:                                             ; preds = %bb9
  %16 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_17
  %_16 = load i32, ptr %16, align 4, !noundef !27
  %len.i.i57 = load i64, ptr %1, align 8, !alias.scope !3933, !noundef !27
  %self1.i.i58 = load i64, ptr %even_arr, align 8, !range !3889, !alias.scope !3933, !noundef !27
  %_4.i.i59 = icmp eq i64 %len.i.i57, %self1.i.i58
  br i1 %_4.i.i59, label %bb1.i.i62, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E.exit64"

bb1.i.i62:                                        ; preds = %bb10
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h539a5665f9650300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %even_arr)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E.exit64" unwind label %cleanup3.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E.exit64": ; preds = %bb1.i.i62, %bb10
  %_15.i.i60 = load ptr, ptr %0, align 8, !alias.scope !3933, !nonnull !27, !noundef !27
  %end.i.i61 = getelementptr inbounds nuw i32, ptr %_15.i.i60, i64 %len.i.i57
  store i32 %_16, ptr %end.i.i61, align 4
  %17 = add i64 %len.i.i57, 1
  store i64 %17, ptr %1, align 8, !alias.scope !3933
  br label %bb15

terminate:                                        ; preds = %cleanup3, %bb39
  %18 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb40:                                             ; preds = %bb39
  resume { ptr, i32 } %.pn
}
