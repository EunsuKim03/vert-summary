define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_4.i.i = alloca [24 x i8], align 8
  %ugly = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ugly)
  %_3 = zext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1631
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef range(i64 0, 4294967296) %_3, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1631
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1031, !noalias !1631, !noundef !37
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1631, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h489527b2035bc384E.exit", !prof !1033

bb3.i.i:                                          ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1631
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #24, !noalias !1631
  unreachable

"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h489527b2035bc384E.exit": ; preds = %start
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1631, !nonnull !37, !noundef !37
  %_7.i.i = icmp samesign uge i64 %err.0.i.i, %_3
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1631
  store i64 %err.0.i.i, ptr %ugly, align 8, !alias.scope !1631
  %3 = getelementptr inbounds nuw i8, ptr %ugly, i64 8
  store ptr %this.1.i.i, ptr %3, align 8, !alias.scope !1631
  %4 = getelementptr inbounds nuw i8, ptr %ugly, i64 16
  store i64 0, ptr %4, align 8, !alias.scope !1631
  %_4.i.i13 = icmp eq i64 %err.0.i.i, 0
  br i1 %_4.i.i13, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h6eef6f2624b36177E.exit"

bb1.i.i:                                          ; preds = %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h489527b2035bc384E.exit"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h209b3437fd56ae74E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %ugly)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h6eef6f2624b36177E.exit" unwind label %cleanup.loopexit.split-lp

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h6eef6f2624b36177E.exit": ; preds = %bb1.i.i, %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h489527b2035bc384E.exit"
  %_15.i.i = load ptr, ptr %3, align 8, !alias.scope !1634, !nonnull !37, !noundef !37
  store i32 1, ptr %_15.i.i, align 4
  store i64 1, ptr %4, align 8, !alias.scope !1634
  %_0.i.i.i49 = icmp ugt i32 %n, 1
  br i1 %_0.i.i.i49, label %bb7, label %bb8

cleanup.loopexit:                                 ; preds = %bb1.i.i23
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %bb1.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %ugly, i64 noundef 4, i64 noundef 4)
          to label %bb27 unwind label %terminate

bb7:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h6eef6f2624b36177E.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h6eef6f2624b36177E.exit25"
  %spec.select59 = phi i32 [ %spec.select, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h6eef6f2624b36177E.exit25" ], [ 2, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h6eef6f2624b36177E.exit" ]
  %len.i.i18 = load i64, ptr %4, align 8, !alias.scope !1639, !noundef !37
  %self1.i.i19 = load i64, ptr %ugly, align 8, !range !1624, !alias.scope !1639, !noundef !37
  %_4.i.i20 = icmp eq i64 %len.i.i18, %self1.i.i19
  br i1 %_4.i.i20, label %bb1.i.i23, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h6eef6f2624b36177E.exit25"

bb8:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h6eef6f2624b36177E.exit25", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h6eef6f2624b36177E.exit"
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %ugly, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ugly)
  ret i32 1

bb1.i.i23:                                        ; preds = %bb7
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h209b3437fd56ae74E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %ugly)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h6eef6f2624b36177E.exit25" unwind label %cleanup.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h6eef6f2624b36177E.exit25": ; preds = %bb1.i.i23, %bb7
  %_15.i.i21 = load ptr, ptr %3, align 8, !alias.scope !1639, !nonnull !37, !noundef !37
  %end.i.i22 = getelementptr inbounds nuw i32, ptr %_15.i.i21, i64 %len.i.i18
  store i32 1, ptr %end.i.i22, align 4
  %5 = add i64 %len.i.i18, 1
  store i64 %5, ptr %4, align 8, !alias.scope !1639
  %_0.i.i.i = icmp ult i32 %spec.select59, %n
  %_0.i1.i.i = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw i32 %spec.select59, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb7, label %bb8

terminate:                                        ; preds = %cleanup
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable

bb27:                                             ; preds = %cleanup
  resume { ptr, i32 } %lpad.phi
}
