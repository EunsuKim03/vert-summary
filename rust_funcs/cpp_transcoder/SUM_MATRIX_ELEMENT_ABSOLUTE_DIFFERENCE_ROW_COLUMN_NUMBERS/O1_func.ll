define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4.i.i14 = alloca [24 x i8], align 8
  %_4.i.i = alloca [24 x i8], align 8
  %_24 = alloca [24 x i8], align 8
  %row = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr)
  %_3 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1634
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef range(i64 -2147483648, 2147483648) %_3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !1634
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1034, !noalias !1634, !noundef !15
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1634, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h00cd39243342c357E.exit", !prof !1036

bb3.i.i:                                          ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1634
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1634
  unreachable

"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h00cd39243342c357E.exit": ; preds = %start
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1634, !nonnull !15, !noundef !15
  %_7.i.i = icmp uge i64 %err.0.i.i, %_3
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1634
  store i64 %err.0.i.i, ptr %arr, align 8, !alias.scope !1634
  %3 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  store ptr %this.1.i.i, ptr %3, align 8, !alias.scope !1634
  %4 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  store i64 0, ptr %4, align 8, !alias.scope !1634
  %_0.i.i.i80 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i80, label %bb6.lr.ph, label %bb18.preheader

bb6.lr.ph:                                        ; preds = %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h00cd39243342c357E.exit"
  %5 = getelementptr inbounds nuw i8, ptr %_4.i.i14, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %_4.i.i14, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %row, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %row, i64 16
  br label %bb6

bb30:                                             ; preds = %cleanup.loopexit, %cleanup.loopexit.split-lp, %bb32, %cleanup5.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %cleanup5.body ], [ %eh.lpad-body, %bb32 ], [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1912aa497468fe80E"(ptr noalias noundef align 8 dereferenceable(24) %arr) #28
          to label %bb31 unwind label %terminate

cleanup.loopexit:                                 ; preds = %bb6
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb30

cleanup.loopexit.split-lp:                        ; preds = %panic.i.i.invoke, %bb3.i.i19
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb30

bb18.preheader:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he9145d80749cad8dE.exit", %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h00cd39243342c357E.exit"
  %_0.i.i.i2688 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i2688, label %bb23.preheader.lr.ph, label %bb21

bb23.preheader.lr.ph:                             ; preds = %bb18.preheader
  %len.i = load i64, ptr %4, align 8
  %_6.i = load ptr, ptr %3, align 8, !nonnull !15
  %9 = add nsw i32 %n, -1
  %10 = zext i32 %9 to i64
  %wide.trip.count104 = zext nneg i32 %n to i64
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb23.preheader

bb6:                                              ; preds = %bb6.lr.ph, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he9145d80749cad8dE.exit"
  %spec.select82 = phi i32 [ 1, %bb6.lr.ph ], [ %spec.select, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he9145d80749cad8dE.exit" ]
  %iter.sroa.0.081 = phi i32 [ 0, %bb6.lr.ph ], [ %spec.select82, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he9145d80749cad8dE.exit" ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %row)
  call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i14), !noalias !1637
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i14, i64 noundef range(i64 -2147483648, 2147483648) %_3, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup.loopexit

.noexc:                                           ; preds = %bb6
  %_5.i.i15 = load i64, ptr %_4.i.i14, align 8, !range !1034, !noalias !1637, !noundef !15
  %11 = trunc nuw i64 %_5.i.i15 to i1
  br i1 %11, label %bb3.i.i19, label %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h45bbd9b72210f2c5E.exit", !prof !1036

bb3.i.i19:                                        ; preds = %.noexc
  %12 = getelementptr inbounds nuw i8, ptr %_4.i.i14, i64 8
  %err.0.i.i20 = load i64, ptr %12, align 8, !range !1035, !noalias !1637, !noundef !15
  %13 = getelementptr inbounds nuw i8, ptr %_4.i.i14, i64 16
  %err.1.i.i21 = load i64, ptr %13, align 8, !noalias !1637
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i20, i64 %err.1.i.i21) #26
          to label %.noexc22 unwind label %cleanup.loopexit.split-lp

.noexc22:                                         ; preds = %bb3.i.i19
  unreachable

"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h45bbd9b72210f2c5E.exit": ; preds = %.noexc
  %this.0.i.i16 = load i64, ptr %5, align 8, !range !1627, !noalias !1637, !noundef !15
  %this.1.i.i17 = load ptr, ptr %6, align 8, !noalias !1637, !nonnull !15, !noundef !15
  %_7.i.i18 = icmp uge i64 %this.0.i.i16, %_3
  call void @llvm.assume(i1 %_7.i.i18)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i14), !noalias !1637
  store i64 %this.0.i.i16, ptr %row, align 8, !alias.scope !1637
  store ptr %this.1.i.i17, ptr %7, align 8, !alias.scope !1637
  store i64 0, ptr %8, align 8
  br label %bb12

bb18.loopexit:                                    ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9d1fc7070e9ab275E.exit"
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %exitcond105.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count104
  br i1 %exitcond105.not, label %bb21, label %bb23.preheader

bb23.preheader:                                   ; preds = %bb23.preheader.lr.ph, %bb18.loopexit
  %indvars.iv100 = phi i64 [ 0, %bb23.preheader.lr.ph ], [ %indvars.iv.next101, %bb18.loopexit ]
  %sum.sroa.0.090 = phi i32 [ 0, %bb23.preheader.lr.ph ], [ %19, %bb18.loopexit ]
  %_4.i.i37 = icmp ugt i64 %len.i, %indvars.iv100
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %indvars.iv100
  %14 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  br i1 %_4.i.i37, label %bb25.lr.ph.split, label %panic.i.i.invoke

bb25.lr.ph.split:                                 ; preds = %bb23.preheader
  %15 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i39 = load i64, ptr %15, align 8, !alias.scope !1640, !noundef !15
  br label %bb25

bb21:                                             ; preds = %bb18.loopexit, %bb18.preheader
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %bb18.preheader ], [ %19, %bb18.loopexit ]
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1912aa497468fe80E"(ptr noalias noundef align 8 dereferenceable(24) %arr)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr)
  ret i32 %sum.sroa.0.0.lcssa

bb25:                                             ; preds = %bb25.lr.ph.split, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9d1fc7070e9ab275E.exit"
  %indvars.iv95 = phi i64 [ 0, %bb25.lr.ph.split ], [ %indvars.iv.next96, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9d1fc7070e9ab275E.exit" ]
  %sum.sroa.0.185 = phi i32 [ %sum.sroa.0.090, %bb25.lr.ph.split ], [ %19, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9d1fc7070e9ab275E.exit" ]
  %exitcond.not = icmp eq i64 %indvars.iv95, %len.i39
  br i1 %exitcond.not, label %panic.i.i.invoke.loopexit, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9d1fc7070e9ab275E.exit"

panic.i.i.invoke.loopexit:                        ; preds = %bb25
  %umin.le = call i64 @llvm.umin.i64(i64 %len.i39, i64 %10)
  br label %panic.i.i.invoke

panic.i.i.invoke:                                 ; preds = %bb23.preheader, %panic.i.i.invoke.loopexit
  %16 = phi i64 [ %umin.le, %panic.i.i.invoke.loopexit ], [ %indvars.iv100, %bb23.preheader ]
  %17 = phi i64 [ %len.i39, %panic.i.i.invoke.loopexit ], [ %len.i, %bb23.preheader ]
  %18 = phi ptr [ @alloc_cc79363378052d3c2573ff697b4cc814, %panic.i.i.invoke.loopexit ], [ @alloc_f53795b692da2a7ae349a135c9914431, %bb23.preheader ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %16, i64 noundef range(i64 0, 2305843009213693952) %17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %18) #25
          to label %panic.i.i.cont unwind label %cleanup.loopexit.split-lp

panic.i.i.cont:                                   ; preds = %panic.i.i.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9d1fc7070e9ab275E.exit": ; preds = %bb25
  %_6.i42 = load ptr, ptr %14, align 8, !alias.scope !1640, !nonnull !15, !noundef !15
  %_0.i.i43 = getelementptr inbounds nuw i32, ptr %_6.i42, i64 %indvars.iv95
  %_37 = load i32, ptr %_0.i.i43, align 4, !noundef !15
  %19 = add i32 %_37, %sum.sroa.0.185
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count
  br i1 %exitcond99.not, label %bb18.loopexit, label %bb25

cleanup5:                                         ; preds = %bb1.i.i58
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup5.body

cleanup5.body:                                    ; preds = %cleanup.i.i, %cleanup5
  %_0.i.i.i4875 = phi i1 [ true, %cleanup5 ], [ false, %cleanup.i.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %20, %cleanup5 ], [ %21, %cleanup.i.i ]
  br i1 %_0.i.i.i4875, label %bb32, label %bb30

bb12:                                             ; preds = %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h45bbd9b72210f2c5E.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h370f223b42914e71E.exit"
  %spec.select6679 = phi i32 [ %spec.select66, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h370f223b42914e71E.exit" ], [ 1, %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h45bbd9b72210f2c5E.exit" ]
  %iter1.sroa.0.077 = phi i32 [ %spec.select6679, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h370f223b42914e71E.exit" ], [ 0, %"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h45bbd9b72210f2c5E.exit" ]
  %_21 = sub nsw i32 %iter.sroa.0.081, %iter1.sroa.0.077
  %_0.sroa.0.0.i = call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %_21, i1 false)
  %len.i.i53 = load i64, ptr %8, align 8, !alias.scope !1643, !noundef !15
  %self1.i.i54 = load i64, ptr %row, align 8, !range !1627, !alias.scope !1643, !noundef !15
  %_4.i.i55 = icmp eq i64 %len.i.i53, %self1.i.i54
  br i1 %_4.i.i55, label %bb1.i.i58, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h370f223b42914e71E.exit"

bb13:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h370f223b42914e71E.exit"
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_24, ptr noundef nonnull align 8 dereferenceable(24) %row, i64 24, i1 false)
  %len.i.i = load i64, ptr %4, align 8, !alias.scope !1648, !noalias !1653, !noundef !15
  %self1.i.i = load i64, ptr %arr, align 8, !range !1627, !alias.scope !1648, !noalias !1653, !noundef !15
  %_4.i.i52 = icmp eq i64 %len.i.i, %self1.i.i
  br i1 %_4.i.i52, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he9145d80749cad8dE.exit"

bb1.i.i:                                          ; preds = %bb13
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hc9609b01acf3ae0dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he9145d80749cad8dE.exit" unwind label %cleanup.i.i, !noalias !1653

cleanup.i.i:                                      ; preds = %bb1.i.i
  %21 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_24, i64 noundef 4, i64 noundef 4)
          to label %cleanup5.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he9145d80749cad8dE.exit": ; preds = %bb13, %bb1.i.i
  %_15.i.i = load ptr, ptr %3, align 8, !alias.scope !1648, !noalias !1653, !nonnull !15, !noundef !15
  %end.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_15.i.i, i64 %len.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %end.i.i, ptr noundef nonnull align 8 dereferenceable(24) %_24, i64 24, i1 false)
  %23 = add i64 %len.i.i, 1
  store i64 %23, ptr %4, align 8, !alias.scope !1648, !noalias !1653
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %row)
  %_0.i.i.i = icmp slt i32 %spec.select82, %n
  %24 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select82, %24
  br i1 %_0.i.i.i, label %bb6, label %bb18.preheader

bb1.i.i58:                                        ; preds = %bb12
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd53b1d73d5642b33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %row)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h370f223b42914e71E.exit" unwind label %cleanup5

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h370f223b42914e71E.exit": ; preds = %bb1.i.i58, %bb12
  %_15.i.i56 = load ptr, ptr %7, align 8, !alias.scope !1643, !nonnull !15, !noundef !15
  %end.i.i57 = getelementptr inbounds nuw i32, ptr %_15.i.i56, i64 %len.i.i53
  store i32 %_0.sroa.0.0.i, ptr %end.i.i57, align 4
  %25 = add i64 %len.i.i53, 1
  store i64 %25, ptr %8, align 8
  %_0.i.i.i48 = icmp slt i32 %spec.select6679, %n
  %26 = zext i1 %_0.i.i.i48 to i32
  %spec.select66 = add nuw nsw i32 %spec.select6679, %26
  br i1 %_0.i.i.i48, label %bb12, label %bb13

bb32:                                             ; preds = %cleanup5.body
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %row, i64 noundef 4, i64 noundef 4)
          to label %bb30 unwind label %terminate

terminate:                                        ; preds = %bb32, %bb30
  %27 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

bb31:                                             ; preds = %bb30
  resume { ptr, i32 } %.pn
}
