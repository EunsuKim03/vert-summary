define noundef range(i32 0, -2147483648) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 4) #29
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb2.i, label %bb1, !prof !1033

bb2.i:                                            ; preds = %start
; invoke alloc::alloc::handle_alloc_error
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h96ccf7ea5a15db6bE(i64 noundef 4, i64 noundef 8) #27
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

bb39:                                             ; preds = %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %2, %cleanup ], [ %lpad.phi, %cleanup1 ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h80f950efdc1475fcE"(ptr noalias noundef align 8 dereferenceable(24) %str) #30
          to label %common.resume unwind label %terminate

cleanup:                                          ; preds = %bb11, %bb2.i
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb39

bb1:                                              ; preds = %start
  store i32 64, ptr %0, align 4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %3, align 4
  store i64 1, ptr %arr, align 8, !alias.scope !1631, !noalias !1636
  %4 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  store ptr %0, ptr %4, align 8, !alias.scope !1631, !noalias !1636
  %5 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  store i64 1, ptr %5, align 8, !alias.scope !1631, !noalias !1636
  %6 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %6, align 8, !alias.scope !1638, !nonnull !37, !noundef !37
  %7 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %len.i.i = load i64, ptr %7, align 8, !alias.scope !1638, !noundef !37
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  br label %bb7

cleanup1.loopexit:                                ; preds = %bb1.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1.loopexit.split-lp:                       ; preds = %panic.i.i41
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1:                                         ; preds = %cleanup1.loopexit.split-lp, %cleanup1.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup1.loopexit ], [ %lpad.loopexit.split-lp, %cleanup1.loopexit.split-lp ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 4, i64 noundef 8)
          to label %bb39 unwind label %terminate

bb7:                                              ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit45", %bb1
  %iter.sroa.0.0 = phi ptr [ %_6.i.i, %bb1 ], [ %iter.sroa.0.2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit45" ]
  %iter.sroa.11.0 = phi i64 [ 0, %bb1 ], [ %iter.sroa.11.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit45" ]
  %maxlen.sroa.0.0 = phi i32 [ 0, %bb1 ], [ %_0.sroa.0.0.i46, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit45" ]
  %_7.i.i.i.i = icmp ne ptr %iter.sroa.0.0, %_7.i
  %spec.select.idx = zext i1 %_7.i.i.i.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0, i64 %spec.select.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"

bb14.i.i.i:                                       ; preds = %bb7
  %x.i.i.i = load i8, ptr %iter.sroa.0.0, align 1, !noalias !1643, !noundef !37
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %_7.i10.i.i.i = icmp ne ptr %spec.select, %_7.i
  call void @llvm.assume(i1 %_7.i10.i.i.i)
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %y.i.i.i = load i8, ptr %spec.select, align 1, !noalias !1643, !noundef !37
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %8 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  call void @llvm.assume(i1 %_7.i17.i.i.i)
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1643, !noundef !37
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %9 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  call void @llvm.assume(i1 %_7.i24.i.i.i)
  %_18.i26.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1643, !noundef !37
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %10 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i": ; preds = %bb8.i.i.i, %bb6.i.i.i, %bb3.i.i.i, %bb4.i.i.i, %bb7
  %iter.sroa.0.2 = phi ptr [ %spec.select, %bb7 ], [ %spec.select, %bb3.i.i.i ], [ %_18.i26.i.i.i, %bb8.i.i.i ], [ %_18.i19.i.i.i, %bb6.i.i.i ], [ %_18.i12.i.i.i, %bb4.i.i.i ]
  %spec.select.i.i = phi i32 [ 1114112, %bb7 ], [ %_7.i.i.i, %bb3.i.i.i ], [ %10, %bb8.i.i.i ], [ %9, %bb6.i.i.i ], [ %8, %bb4.i.i.i ]
  %.not.i = icmp ne i32 %spec.select.i.i, 1114112
  %_8.0.i = zext i1 %.not.i to i64
  %iter.sroa.11.1 = add i64 %iter.sroa.11.0, %_8.0.i
  %.not = icmp eq i32 %spec.select.i.i, 1114112
  br i1 %.not, label %bb11, label %bb10

bb10:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"
  %_20 = trunc i64 %iter.sroa.11.0 to i32
  %len.i.i7 = load i64, ptr %5, align 8, !alias.scope !1650, !noundef !37
  %self1.i.i = load i64, ptr %arr, align 8, !range !1624, !alias.scope !1650, !noundef !37
  %_4.i.i = icmp eq i64 %len.i.i7, %self1.i.i
  br i1 %_4.i.i, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17heef4621f4ba99b60E.exit"

bb1.i.i:                                          ; preds = %bb10
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h632c3dc5461a50cfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17heef4621f4ba99b60E.exit" unwind label %cleanup1.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17heef4621f4ba99b60E.exit": ; preds = %bb1.i.i, %bb10
  %_15.i.i = load ptr, ptr %4, align 8, !alias.scope !1650, !nonnull !37, !noundef !37
  %end.i.i = getelementptr inbounds nuw { i32, i32 }, ptr %_15.i.i, i64 %len.i.i7
  store i32 %spec.select.i.i, ptr %end.i.i, align 4
  %11 = getelementptr inbounds nuw i8, ptr %end.i.i, i64 4
  store i32 %_20, ptr %11, align 4
  %12 = add i64 %len.i.i7, 1
  store i64 %12, ptr %5, align 8, !alias.scope !1650
  %_2.i80 = icmp ult i64 %12, 1152921504606846976
  call void @llvm.assume(i1 %_2.i80)
  %_2181 = icmp samesign ugt i64 %12, 2
  br i1 %_2181, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit.lr.ph", label %bb32

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit.lr.ph": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17heef4621f4ba99b60E.exit"
  %_6.i = load ptr, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %invariant.gep = getelementptr i8, ptr %_6.i, i64 -24
  %invariant.gep86 = getelementptr i8, ptr %_6.i, i64 -16
  %self1.i = load i64, ptr %arr, align 8, !range !1624
  br label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit"

bb11:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 4, i64 noundef 8)
          to label %bb36 unwind label %cleanup

bb36:                                             ; preds = %bb11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h80f950efdc1475fcE.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb36
  %13 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable

common.resume:                                    ; preds = %bb39, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %13, %cleanup.i.i ], [ %.pn, %bb39 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h80f950efdc1475fcE.exit": ; preds = %bb36
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %maxlen.sroa.0.0

bb32:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h6f9ffdc4f29861b9E.exit72", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit26", %bb21, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17heef4621f4ba99b60E.exit"
  %_0.i.lcssa = phi i64 [ %12, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17heef4621f4ba99b60E.exit" ], [ %_3.i6079, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h6f9ffdc4f29861b9E.exit72" ], [ %_3.i607882, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit" ], [ %_3.i607882, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit26" ], [ %_3.i607882, %bb21 ]
  %_54 = add nsw i64 %_0.i.lcssa, -1
  %_4.i.i40.not = icmp eq i64 %_0.i.lcssa, 0
  br i1 %_4.i.i40.not, label %panic.i.i41, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit45"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit.lr.ph", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h6f9ffdc4f29861b9E.exit72"
  %_3.i607882 = phi i64 [ %12, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit.lr.ph" ], [ %_3.i6079, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h6f9ffdc4f29861b9E.exit72" ]
  %gep = getelementptr { i32, i32 }, ptr %invariant.gep, i64 %_3.i607882
  %_25 = load i32, ptr %gep, align 4, !range !1660, !noundef !37
  %_24 = icmp eq i32 %_25, 49
  br i1 %_24, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit26", label %bb32

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit26": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit"
  %gep87 = getelementptr { i32, i32 }, ptr %invariant.gep86, i64 %_3.i607882
  %_32 = load i32, ptr %gep87, align 4, !range !1660, !noundef !37
  %_31 = icmp eq i32 %_32, 48
  br i1 %_31, label %bb21, label %bb32

bb21:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit26"
  %_42 = add nsw i64 %_3.i607882, -1
  %_0.i.i33 = getelementptr inbounds nuw { i32, i32 }, ptr %_6.i, i64 %_42
  %_39 = load i32, ptr %_0.i.i33, align 4, !range !1660, !noundef !37
  %_38 = icmp eq i32 %_39, 48
  br i1 %_38, label %bb24, label %bb32

bb24:                                             ; preds = %bb21
  store i64 %_42, ptr %5, align 8, !alias.scope !1661
  %cond.i = icmp samesign ult i64 %_42, %self1.i
  call void @llvm.assume(i1 %cond.i)
  %_2.i48 = icmp eq i64 %_42, 0
  br i1 %_2.i48, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h6f9ffdc4f29861b9E.exit59", label %bb2.i49

panic.i.i41:                                      ; preds = %bb32
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -3, 1152921504606846975) %_54, i64 noundef range(i64 0, 1152921504606846976) %_0.i.lcssa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c001a48b7e8237c1114f22bb771f556d) #26
          to label %.noexc44 unwind label %cleanup1.loopexit.split-lp

.noexc44:                                         ; preds = %panic.i.i41
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit45": ; preds = %bb32
  %_6.i42 = load ptr, ptr %4, align 8, !alias.scope !1664, !noalias !1667, !nonnull !37, !noundef !37
  %15 = getelementptr inbounds nuw { i32, i32 }, ptr %_6.i42, i64 %_54, i32 1
  %tmp = load i32, ptr %15, align 4, !noundef !37
  %_58 = sub i32 %_20, %tmp
  %_0.sroa.0.0.i46 = call noundef i32 @llvm.smax.i32(i32 %_58, i32 %maxlen.sroa.0.0)
  br label %bb7

bb2.i49:                                          ; preds = %bb24
  %16 = add nsw i64 %_3.i607882, -2
  store i64 %16, ptr %5, align 8, !alias.scope !1669
  %cond.i51 = icmp samesign ult i64 %16, %self1.i
  call void @llvm.assume(i1 %cond.i51)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h6f9ffdc4f29861b9E.exit59"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h6f9ffdc4f29861b9E.exit59": ; preds = %bb24, %bb2.i49
  %_3.i6077 = phi i64 [ %_42, %bb24 ], [ %16, %bb2.i49 ]
  %_2.i61 = icmp eq i64 %_3.i6077, 0
  br i1 %_2.i61, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h6f9ffdc4f29861b9E.exit72", label %bb2.i62

bb2.i62:                                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h6f9ffdc4f29861b9E.exit59"
  %17 = add nsw i64 %_3.i6077, -1
  store i64 %17, ptr %5, align 8, !alias.scope !1672
  %cond.i64 = icmp samesign ult i64 %17, %self1.i
  call void @llvm.assume(i1 %cond.i64)
  %_18.i66 = icmp ult i64 %_3.i6077, 1152921504606846977
  call void @llvm.assume(i1 %_18.i66)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h6f9ffdc4f29861b9E.exit72"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h6f9ffdc4f29861b9E.exit72": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h6f9ffdc4f29861b9E.exit59", %bb2.i62
  %_3.i6079 = phi i64 [ %_3.i6077, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h6f9ffdc4f29861b9E.exit59" ], [ %17, %bb2.i62 ]
  %_2.i = icmp ult i64 %_3.i6079, 1152921504606846976
  call void @llvm.assume(i1 %_2.i)
  %_21 = icmp samesign ugt i64 %_3.i6079, 2
  br i1 %_21, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3cbf7386226bd248E.exit", label %bb32

terminate:                                        ; preds = %cleanup1, %bb39
  %18 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable
}
