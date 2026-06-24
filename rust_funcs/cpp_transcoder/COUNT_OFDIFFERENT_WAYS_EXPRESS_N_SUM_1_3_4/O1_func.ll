define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_4.i.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_4 = sext i32 %n to i64
  %_3 = add nsw i64 %_4, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1631
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef range(i64 -2147483647, 2147483649) %_3, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1631
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1031, !noalias !1631, !noundef !37
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1631, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h8bc6c0906f91ce8cE.exit", !prof !1033

bb3.i.i:                                          ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1631
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25, !noalias !1631
  unreachable

"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h8bc6c0906f91ce8cE.exit": ; preds = %start
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1631, !nonnull !37, !noundef !37
  %_7.i.i = icmp ule i64 %_3, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1631
  store i64 %err.0.i.i, ptr %dp, align 8, !alias.scope !1631
  %3 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %this.1.i.i, ptr %3, align 8, !alias.scope !1631
  %4 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 0, ptr %4, align 8, !alias.scope !1631
  %_4.i.i2 = icmp eq i64 %err.0.i.i, 0
  br i1 %_4.i.i2, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit"

bb1.i.i:                                          ; preds = %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h8bc6c0906f91ce8cE.exit"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h39963d57aa4fc884E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit" unwind label %cleanup.loopexit.split-lp

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit": ; preds = %bb1.i.i, %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h8bc6c0906f91ce8cE.exit"
  %_15.i.i = load ptr, ptr %3, align 8, !alias.scope !1634, !nonnull !37, !noundef !37
  store i32 1, ptr %_15.i.i, align 4
  store i64 1, ptr %4, align 8, !alias.scope !1634
  %self1.i.i5 = load i64, ptr %dp, align 8, !range !1624, !alias.scope !1639, !noundef !37
  %_4.i.i6 = icmp eq i64 %self1.i.i5, 1
  br i1 %_4.i.i6, label %bb1.i.i9, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit11"

cleanup.loopexit:                                 ; preds = %bb1.i.i56
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %panic.i.i.invoke, %bb1.i.i, %bb1.i.i9, %bb1.i.i17, %bb1.i.i25
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb20 unwind label %terminate

bb1.i.i9:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h39963d57aa4fc884E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit11" unwind label %cleanup.loopexit.split-lp

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit11": ; preds = %bb1.i.i9, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit"
  %_15.i.i7 = load ptr, ptr %3, align 8, !alias.scope !1639, !nonnull !37, !noundef !37
  %end.i.i8 = getelementptr inbounds nuw i8, ptr %_15.i.i7, i64 4
  store i32 1, ptr %end.i.i8, align 4
  store i64 2, ptr %4, align 8, !alias.scope !1639
  %self1.i.i13 = load i64, ptr %dp, align 8, !range !1624, !alias.scope !1644, !noundef !37
  %_4.i.i14 = icmp eq i64 %self1.i.i13, 2
  br i1 %_4.i.i14, label %bb1.i.i17, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit19"

bb1.i.i17:                                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit11"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h39963d57aa4fc884E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit19" unwind label %cleanup.loopexit.split-lp

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit19": ; preds = %bb1.i.i17, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit11"
  %_15.i.i15 = load ptr, ptr %3, align 8, !alias.scope !1644, !nonnull !37, !noundef !37
  %end.i.i16 = getelementptr inbounds nuw i8, ptr %_15.i.i15, i64 8
  store i32 1, ptr %end.i.i16, align 4
  store i64 3, ptr %4, align 8, !alias.scope !1644
  %self1.i.i21 = load i64, ptr %dp, align 8, !range !1624, !alias.scope !1649, !noundef !37
  %_4.i.i22 = icmp eq i64 %self1.i.i21, 3
  br i1 %_4.i.i22, label %bb1.i.i25, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit27"

bb1.i.i25:                                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit19"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h39963d57aa4fc884E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit27" unwind label %cleanup.loopexit.split-lp

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit27": ; preds = %bb1.i.i25, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit19"
  %_15.i.i23 = load ptr, ptr %3, align 8, !alias.scope !1649, !nonnull !37, !noundef !37
  %end.i.i24 = getelementptr inbounds nuw i8, ptr %_15.i.i23, i64 12
  store i32 2, ptr %end.i.i24, align 4
  br label %bb8

bb8:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit58", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit27"
  %storemerge = phi i64 [ 4, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit27" ], [ %10, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit58" ]
  %iter.sroa.0.0 = phi i32 [ 4, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit27" ], [ %iter.sroa.0.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit58" ]
  %iter.sroa.7.0 = phi i8 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit27" ], [ %iter.sroa.7.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit58" ]
  store i64 %storemerge, ptr %4, align 8
  %_10.i.i = trunc nuw i8 %iter.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.0, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  br i1 %or.cond, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha1a5195ddcf7ebc7E.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb8
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %5 = zext i1 %_0.i3.i.i to i32
  %spec.select = add nsw i32 %iter.sroa.0.0, %5
  %spec.select59 = select i1 %_0.i3.i.i, i8 %iter.sroa.7.0, i8 1
  %6 = sext i32 %iter.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha1a5195ddcf7ebc7E.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha1a5195ddcf7ebc7E.exit": ; preds = %bb2.i.i, %bb8
  %iter.sroa.0.1 = phi i32 [ %iter.sroa.0.0, %bb8 ], [ %spec.select, %bb2.i.i ]
  %iter.sroa.7.1 = phi i8 [ %iter.sroa.7.0, %bb8 ], [ %spec.select59, %bb2.i.i ]
  %_0.sroa.3.0.i.i = phi i64 [ 0, %bb8 ], [ %6, %bb2.i.i ]
  br i1 %or.cond, label %bb12, label %bb11

bb11:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha1a5195ddcf7ebc7E.exit"
  %_27 = add nsw i64 %_0.sroa.3.0.i.i, -1
  %len.i = load i64, ptr %4, align 8, !alias.scope !1654, !noalias !1657, !noundef !37
  %_4.i.i28 = icmp ult i64 %_27, %len.i
  br i1 %_4.i.i28, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit", label %panic.i.i.invoke

panic.i.i.invoke:                                 ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit43", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit", %bb11, %bb12
  %7 = phi i64 [ %_4, %bb12 ], [ %_36, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit43" ], [ %_32, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit" ], [ %_27, %bb11 ]
  %8 = phi i64 [ %len.i30, %bb12 ], [ %len.i, %bb11 ], [ %len.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit" ], [ %len.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit43" ]
  %9 = phi ptr [ @alloc_a4382073e4b3b81fe497466a41567024, %bb12 ], [ @alloc_48c57c3c186518a791aaa56691556a05, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit43" ], [ @alloc_7461fe806288c95339fe9466ff2bc776, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit" ], [ @alloc_9b3bf443d4edb47bc1e1a0d5db0e2aea, %bb11 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483652, 2147483648) %7, i64 noundef range(i64 0, 2305843009213693952) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #24
          to label %panic.i.i.cont unwind label %cleanup.loopexit.split-lp

panic.i.i.cont:                                   ; preds = %panic.i.i.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit": ; preds = %bb11
  %_6.i = load ptr, ptr %3, align 8, !alias.scope !1654, !noalias !1657, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_27
  %_24 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %_32 = add nsw i64 %_0.sroa.3.0.i.i, -3
  %_4.i.i38 = icmp ult i64 %_32, %len.i
  br i1 %_4.i.i38, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit43", label %panic.i.i.invoke

bb12:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha1a5195ddcf7ebc7E.exit"
  %len.i30 = load i64, ptr %4, align 8, !alias.scope !1659, !noalias !1662, !noundef !37
  %_4.i.i31 = icmp ugt i64 %len.i30, %_4
  br i1 %_4.i.i31, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit36", label %panic.i.i.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit36": ; preds = %bb12
  %_6.i33 = load ptr, ptr %3, align 8, !alias.scope !1659, !noalias !1662, !nonnull !37, !noundef !37
  %_0.i.i34 = getelementptr inbounds nuw i32, ptr %_6.i33, i64 %_4
  %_0 = load i32, ptr %_0.i.i34, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit43": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit"
  %_36 = add nsw i64 %_0.sroa.3.0.i.i, -4
  %_4.i.i45 = icmp ult i64 %_36, %len.i
  br i1 %_4.i.i45, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit50", label %panic.i.i.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit50": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit43"
  %_0.i.i41 = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_32
  %_29 = load i32, ptr %_0.i.i41, align 4, !noundef !37
  %_0.i.i48 = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_36
  %_23 = add i32 %_29, %_24
  %_33 = load i32, ptr %_0.i.i48, align 4, !noundef !37
  %_22 = add i32 %_23, %_33
  %self1.i.i52 = load i64, ptr %dp, align 8, !range !1624, !alias.scope !1664, !noundef !37
  %_4.i.i53 = icmp eq i64 %len.i, %self1.i.i52
  br i1 %_4.i.i53, label %bb1.i.i56, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit58"

bb1.i.i56:                                        ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit50"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h39963d57aa4fc884E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit58" unwind label %cleanup.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h04c7f20b465233f3E.exit58": ; preds = %bb1.i.i56, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E.exit50"
  %_15.i.i54 = load ptr, ptr %3, align 8, !alias.scope !1664, !nonnull !37, !noundef !37
  %end.i.i55 = getelementptr inbounds nuw i32, ptr %_15.i.i54, i64 %len.i
  store i32 %_22, ptr %end.i.i55, align 4
  %10 = add i64 %len.i, 1
  br label %bb8

terminate:                                        ; preds = %cleanup
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb20:                                             ; preds = %cleanup
  resume { ptr, i32 } %lpad.phi
}
