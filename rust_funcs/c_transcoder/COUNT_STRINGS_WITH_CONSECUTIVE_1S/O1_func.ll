define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_4.i.i4 = alloca [24 x i8], align 8
  %_4.i.i = alloca [24 x i8], align 8
  %b = alloca [24 x i8], align 8
  %a = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %a)
  %_3 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1631
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef range(i64 -2147483648, 2147483648) %_3, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1631
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1031, !noalias !1631, !noundef !37
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1631, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h65f803fe410a74d3E.exit", !prof !1033

bb3.i.i:                                          ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1631
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25, !noalias !1631
  unreachable

"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h65f803fe410a74d3E.exit": ; preds = %start
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1631, !nonnull !37, !noundef !37
  %_7.i.i = icmp uge i64 %err.0.i.i, %_3
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1631
  store i64 %err.0.i.i, ptr %a, align 8, !alias.scope !1631
  %3 = getelementptr inbounds nuw i8, ptr %a, i64 8
  store ptr %this.1.i.i, ptr %3, align 8, !alias.scope !1631
  %4 = getelementptr inbounds nuw i8, ptr %a, i64 16
  store i64 0, ptr %4, align 8, !alias.scope !1631
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i4), !noalias !1634
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i4, i64 noundef range(i64 -2147483648, 2147483648) %_3, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h65f803fe410a74d3E.exit"
  %_5.i.i5 = load i64, ptr %_4.i.i4, align 8, !range !1031, !noalias !1634, !noundef !37
  %5 = trunc nuw i64 %_5.i.i5 to i1
  %6 = getelementptr inbounds nuw i8, ptr %_4.i.i4, i64 8
  %err.0.i.i10 = load i64, ptr %6, align 8, !range !1032, !noalias !1634, !noundef !37
  %7 = getelementptr inbounds nuw i8, ptr %_4.i.i4, i64 16
  br i1 %5, label %bb3.i.i9, label %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h65f803fe410a74d3E.exit13", !prof !1033

bb3.i.i9:                                         ; preds = %.noexc
  %err.1.i.i11 = load i64, ptr %7, align 8, !noalias !1634
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i10, i64 %err.1.i.i11) #25
          to label %.noexc12 unwind label %cleanup

.noexc12:                                         ; preds = %bb3.i.i9
  unreachable

"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h65f803fe410a74d3E.exit13": ; preds = %.noexc
  %this.1.i.i7 = load ptr, ptr %7, align 8, !noalias !1634, !nonnull !37, !noundef !37
  %_7.i.i8 = icmp uge i64 %err.0.i.i10, %_3
  tail call void @llvm.assume(i1 %_7.i.i8)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i4), !noalias !1634
  store i64 %err.0.i.i10, ptr %b, align 8, !alias.scope !1634
  %8 = getelementptr inbounds nuw i8, ptr %b, i64 8
  store ptr %this.1.i.i7, ptr %8, align 8, !alias.scope !1634
  %9 = getelementptr inbounds nuw i8, ptr %b, i64 16
  store i64 0, ptr %9, align 8, !alias.scope !1634
  %len.i.i = load i64, ptr %4, align 8, !alias.scope !1637, !noundef !37
  %self1.i.i = load i64, ptr %a, align 8, !range !1624, !alias.scope !1637, !noundef !37
  %_4.i.i15 = icmp eq i64 %len.i.i, %self1.i.i
  br i1 %_4.i.i15, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit"

bb21:                                             ; preds = %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %10, %cleanup ], [ %lpad.phi, %cleanup1 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %a, i64 noundef 4, i64 noundef 4)
          to label %bb22 unwind label %terminate

cleanup:                                          ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit43", %bb3.i.i9, %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h65f803fe410a74d3E.exit"
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %bb21

bb1.i.i:                                          ; preds = %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h65f803fe410a74d3E.exit13"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h6bb3fb2063f51f4fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %a)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit" unwind label %cleanup1.loopexit.split-lp

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit": ; preds = %bb1.i.i, %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h65f803fe410a74d3E.exit13"
  %_15.i.i = load ptr, ptr %3, align 8, !alias.scope !1637, !nonnull !37, !noundef !37
  %end.i.i = getelementptr inbounds nuw i32, ptr %_15.i.i, i64 %len.i.i
  store i32 1, ptr %end.i.i, align 4
  %11 = add i64 %len.i.i, 1
  store i64 %11, ptr %4, align 8, !alias.scope !1637
  %len.i.i19 = load i64, ptr %9, align 8, !alias.scope !1642, !noundef !37
  %self1.i.i20 = load i64, ptr %b, align 8, !range !1624, !alias.scope !1642, !noundef !37
  %_4.i.i21 = icmp eq i64 %len.i.i19, %self1.i.i20
  br i1 %_4.i.i21, label %bb1.i.i24, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit26"

cleanup1.loopexit:                                ; preds = %bb1.i.i58, %bb1.i.i73
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1.loopexit.split-lp:                       ; preds = %panic.i.i.invoke, %bb1.i.i, %bb1.i.i24
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1:                                         ; preds = %cleanup1.loopexit.split-lp, %cleanup1.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup1.loopexit ], [ %lpad.loopexit.split-lp, %cleanup1.loopexit.split-lp ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %b, i64 noundef 4, i64 noundef 4)
          to label %bb21 unwind label %terminate

bb1.i.i24:                                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h6bb3fb2063f51f4fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %b)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit26" unwind label %cleanup1.loopexit.split-lp

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit26": ; preds = %bb1.i.i24, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit"
  %_15.i.i22 = load ptr, ptr %8, align 8, !alias.scope !1642, !nonnull !37, !noundef !37
  %end.i.i23 = getelementptr inbounds nuw i32, ptr %_15.i.i22, i64 %len.i.i19
  store i32 1, ptr %end.i.i23, align 4
  %storemerge85 = add i64 %len.i.i19, 1
  store i64 %storemerge85, ptr %9, align 8
  %_0.i.i.i86 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i86, label %bb9, label %bb10

bb9:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit26", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit75"
  %spec.select89 = phi i32 [ %spec.select, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit75" ], [ 2, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit26" ]
  %iter.sroa.0.088 = phi i32 [ %spec.select89, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit75" ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit26" ]
  %_23 = zext nneg i32 %iter.sroa.0.088 to i64
  %_22 = add nsw i64 %_23, -1
  %len.i = load i64, ptr %4, align 8, !alias.scope !1647, !noalias !1650, !noundef !37
  %_4.i.i28 = icmp ult i64 %_22, %len.i
  br i1 %_4.i.i28, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit", label %panic.i.i.invoke

panic.i.i.invoke:                                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit60", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit", %bb9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit36", %bb10
  %12 = phi i64 [ %_37, %bb10 ], [ %_37, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit36" ], [ %_22, %bb9 ], [ %_22, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit" ], [ %_22, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit60" ]
  %13 = phi i64 [ %len.i30, %bb10 ], [ %len.i37, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit36" ], [ %17, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit60" ], [ %len.i46, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit" ], [ %len.i, %bb9 ]
  %14 = phi ptr [ @alloc_8da7ed78b47668010ac132c295ad368f, %bb10 ], [ @alloc_af8779130104ef431c52fdc6ad763c28, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit36" ], [ @alloc_19d423c5f455a2a32b72c302d84dfa49, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit60" ], [ @alloc_38b0b17ba1f3330981922b59f2c97714, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit" ], [ @alloc_dfee6f6e8b405d26a17ddd473edd47ac, %bb9 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483649, 2147483647) %12, i64 noundef range(i64 0, 2305843009213693952) %13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #24
          to label %panic.i.i.cont unwind label %cleanup1.loopexit.split-lp

panic.i.i.cont:                                   ; preds = %panic.i.i.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit": ; preds = %bb9
  %len.i46 = load i64, ptr %9, align 8, !alias.scope !1652, !noalias !1655, !noundef !37
  %_4.i.i47 = icmp ult i64 %_22, %len.i46
  br i1 %_4.i.i47, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit52", label %panic.i.i.invoke

bb10:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit75", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit26"
  %_37 = add nsw i64 %_3, -1
  %len.i30 = load i64, ptr %4, align 8, !alias.scope !1657, !noalias !1660, !noundef !37
  %_4.i.i31 = icmp ult i64 %_37, %len.i30
  br i1 %_4.i.i31, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit36", label %panic.i.i.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit36": ; preds = %bb10
  %_6.i33 = load ptr, ptr %3, align 8, !alias.scope !1657, !noalias !1660, !nonnull !37, !noundef !37
  %_0.i.i34 = getelementptr inbounds nuw i32, ptr %_6.i33, i64 %_37
  %_34 = load i32, ptr %_0.i.i34, align 4, !noundef !37
  %len.i37 = load i64, ptr %9, align 8, !alias.scope !1662, !noalias !1665, !noundef !37
  %_4.i.i38 = icmp ult i64 %_37, %len.i37
  br i1 %_4.i.i38, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit43", label %panic.i.i.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit43": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit36"
  %_6.i40 = load ptr, ptr %8, align 8, !alias.scope !1662, !noalias !1665, !nonnull !37, !noundef !37
  %_0.i.i41 = getelementptr inbounds nuw i32, ptr %_6.i40, i64 %_37
  %_38 = load i32, ptr %_0.i.i41, align 4, !noundef !37
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %b, i64 noundef 4, i64 noundef 4)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit43"
  %15 = and i32 %n, 31
  %_33 = shl nuw i32 1, %15
  %16 = add i32 %_34, %_38
  %_0 = sub i32 %_33, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %b)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %a, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %a)
  ret i32 %_0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit52": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit"
  %_6.i = load ptr, ptr %3, align 8, !alias.scope !1647, !noalias !1650, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_22
  %_19 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %_6.i49 = load ptr, ptr %8, align 8, !alias.scope !1652, !noalias !1655, !nonnull !37, !noundef !37
  %_0.i.i50 = getelementptr inbounds nuw i32, ptr %_6.i49, i64 %_22
  %_24 = load i32, ptr %_0.i.i50, align 4, !noundef !37
  %_18 = add i32 %_24, %_19
  %self1.i.i54 = load i64, ptr %a, align 8, !range !1624, !alias.scope !1667, !noundef !37
  %_4.i.i55 = icmp eq i64 %len.i, %self1.i.i54
  br i1 %_4.i.i55, label %bb1.i.i58, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit60"

bb1.i.i58:                                        ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit52"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h6bb3fb2063f51f4fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %a)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit60" unwind label %cleanup1.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit60": ; preds = %bb1.i.i58, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit52"
  %_15.i.i56 = load ptr, ptr %3, align 8, !alias.scope !1667, !nonnull !37, !noundef !37
  %end.i.i57 = getelementptr inbounds nuw i32, ptr %_15.i.i56, i64 %len.i
  store i32 %_18, ptr %end.i.i57, align 4
  %17 = add i64 %len.i, 1
  store i64 %17, ptr %4, align 8, !alias.scope !1667
  %_4.i.i62 = icmp ult i64 %_22, %17
  br i1 %_4.i.i62, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit67", label %panic.i.i.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit67": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit60"
  %_6.i64 = load ptr, ptr %3, align 8, !alias.scope !1672, !noalias !1675, !nonnull !37, !noundef !37
  %_0.i.i65 = getelementptr inbounds nuw i32, ptr %_6.i64, i64 %_22
  %_29 = load i32, ptr %_0.i.i65, align 4, !noundef !37
  %len.i.i68 = load i64, ptr %9, align 8, !alias.scope !1677, !noundef !37
  %self1.i.i69 = load i64, ptr %b, align 8, !range !1624, !alias.scope !1677, !noundef !37
  %_4.i.i70 = icmp eq i64 %len.i.i68, %self1.i.i69
  br i1 %_4.i.i70, label %bb1.i.i73, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit75"

bb1.i.i73:                                        ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit67"
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h6bb3fb2063f51f4fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %b)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit75" unwind label %cleanup1.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h043b038ce2418524E.exit75": ; preds = %bb1.i.i73, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb350984f169504c1E.exit67"
  %_15.i.i71 = load ptr, ptr %8, align 8, !alias.scope !1677, !nonnull !37, !noundef !37
  %end.i.i72 = getelementptr inbounds nuw i32, ptr %_15.i.i71, i64 %len.i.i68
  store i32 %_29, ptr %end.i.i72, align 4
  %storemerge = add i64 %len.i.i68, 1
  store i64 %storemerge, ptr %9, align 8
  %_0.i.i.i = icmp slt i32 %spec.select89, %n
  %18 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select89, %18
  br i1 %_0.i.i.i, label %bb9, label %bb10

terminate:                                        ; preds = %cleanup1, %bb21
  %19 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb22:                                             ; preds = %bb21
  resume { ptr, i32 } %.pn
}
