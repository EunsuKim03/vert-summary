define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_3 = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_3)
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_24 = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_23 = load i64, ptr %1, align 8, !noundef !23
  %_8.i.i.i = icmp eq i64 %_23, 0
  br i1 %_8.i.i.i, label %bb15, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i": ; preds = %start
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1042
; call __rustc::__rust_alloc
  %2 = tail call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %_23, i64 noundef range(i64 1, 5) 1) #22, !noalias !1042
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb3.i.i, label %bb1.i.i.i.i

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i"
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %_23) #23
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb3.i.i
  unreachable

bb13:                                             ; preds = %bb2.i.i.i3.i.i8, %cleanup1, %cleanup.i, %bb2.i.i.i3.i.i.i, %cleanup
  %.pn = phi { ptr, i32 } [ %4, %cleanup ], [ %5, %bb2.i.i.i3.i.i.i ], [ %5, %cleanup.i ], [ %7, %cleanup1 ], [ %7, %bb2.i.i.i3.i.i8 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1031, !alias.scope !1063, !noalias !1066, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb14, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb13
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_24, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1068
  br label %bb14

cleanup:                                          ; preds = %bb3.i.i
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb13

bb15:                                             ; preds = %start
  %_26.sroa.5.0._3.sroa_idx = getelementptr inbounds nuw i8, ptr %_3, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  br label %bb1

bb1.i.i.i.i:                                      ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull readonly align 1 %_24, i64 range(i64 0, -9223372036854775808) %_23, i1 false), !noalias !1080
  store i64 %_23, ptr %_3, align 8
  %_26.sroa.4.0._3.sroa_idx39 = getelementptr inbounds nuw i8, ptr %_3, i64 8
  store ptr %2, ptr %_26.sroa.4.0._3.sroa_idx39, align 8
  %_26.sroa.5.0._3.sroa_idx40 = getelementptr inbounds nuw i8, ptr %_3, i64 16
  store i64 %_23, ptr %_26.sroa.5.0._3.sroa_idx40, align 8
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h28c1858f65e72e68E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_3, i64 noundef %_23, i64 noundef %_23)
          to label %.noexc.i unwind label %cleanup.i

.noexc.i:                                         ; preds = %bb1.i.i.i.i
  %len.pre.i.i.i = load i64, ptr %_26.sroa.5.0._3.sroa_idx40, align 8, !alias.scope !1081, !noalias !1082
  %_10.i.i.i.pre = load ptr, ptr %_26.sroa.4.0._3.sroa_idx39, align 8, !alias.scope !1081, !noalias !1082
  %tmp.sroa.0.0.copyload.pre = load i64, ptr %_3, align 8, !alias.scope !1084, !noalias !1085
  br label %bb1

cleanup.i:                                        ; preds = %bb1.i.i.i.i
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  %self1.i.i.i.i1.i.i.i = load i64, ptr %_3, align 8, !range !1031, !alias.scope !1101, !noalias !1104, !noundef !23
  %_6.i.i.i.i2.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i, label %bb13, label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %cleanup.i
  %self3.i.i.i.i4.i.i.i = load ptr, ptr %_26.sroa.4.0._3.sroa_idx39, align 8, !alias.scope !1101, !noalias !1104, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i, i64 noundef %self1.i.i.i.i1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1106
  br label %bb13

bb1:                                              ; preds = %.noexc.i, %bb15
  %tmp.sroa.0.0.copyload = phi i64 [ 0, %bb15 ], [ %tmp.sroa.0.0.copyload.pre, %.noexc.i ]
  %_10.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb15 ], [ %_10.i.i.i.pre, %.noexc.i ]
  %_26.sroa.5.0._3.sroa_idx45 = phi ptr [ %_26.sroa.5.0._3.sroa_idx, %bb15 ], [ %_26.sroa.5.0._3.sroa_idx40, %.noexc.i ]
  %len.i.i.i = phi i64 [ 0, %bb15 ], [ %len.pre.i.i.i, %.noexc.i ]
  %_9.i.i.i = icmp sgt i64 %len.i.i.i, -1
  tail call void @llvm.assume(i1 %_9.i.i.i)
  %dst.i.i.i = getelementptr inbounds nuw i8, ptr %_10.i.i.i, i64 %len.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %dst.i.i.i, ptr nonnull readonly align 1 %_24, i64 %_23, i1 false), !noalias !1107
  %6 = add nuw i64 %len.i.i.i, %_23
  store i64 %6, ptr %_26.sroa.5.0._3.sroa_idx45, align 8, !alias.scope !1081, !noalias !1082
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3)
  %_33 = icmp sgt i64 %_23, -1
  tail call void @llvm.assume(i1 %_33)
  br label %bb2

bb2:                                              ; preds = %bb6, %bb1
  %iter.sroa.0.0 = phi i64 [ 1, %bb1 ], [ %spec.select, %bb6 ]
  %iter.sroa.8.0 = phi i1 [ false, %bb1 ], [ %_0.i3.i, %bb6 ]
  %_0.i.not.i = icmp ugt i64 %iter.sroa.0.0, %_23
  %or.cond = select i1 %iter.sroa.8.0, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb5, label %bb2.i5

bb2.i5:                                           ; preds = %bb2
  %_0.i3.i = icmp uge i64 %iter.sroa.0.0, %_23
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select = add nuw i64 %iter.sroa.0.0, %_0.i4.i
  %_15 = add i64 %iter.sroa.0.0, %_23
  %_3.not.i = icmp ugt i64 %iter.sroa.0.0, %_15
  br i1 %_3.not.i, label %bb18, label %bb9.i

cleanup1:                                         ; preds = %bb18
  %7 = landingpad { ptr, i32 }
          cleanup
  %_6.i.i.i.i2.i.i7 = icmp eq i64 %tmp.sroa.0.0.copyload, 0
  br i1 %_6.i.i.i.i2.i.i7, label %bb13, label %bb2.i.i.i3.i.i8

bb2.i.i.i3.i.i8:                                  ; preds = %cleanup1
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_10.i.i.i, i64 noundef %tmp.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1108
  br label %bb13

bb9.i:                                            ; preds = %bb2.i5
  %_12.not.i = icmp ult i64 %iter.sroa.0.0, %6
  br i1 %_12.not.i, label %bb13.i, label %bb2.i14

bb13.i:                                           ; preds = %bb9.i
  %8 = getelementptr inbounds nuw i8, ptr %_10.i.i.i, i64 %iter.sroa.0.0
  %self.i = load i8, ptr %8, align 1, !alias.scope !1119, !noundef !23
  %9 = icmp sgt i8 %self.i, -65
  br i1 %9, label %bb2.i14, label %bb18

bb2.i14:                                          ; preds = %bb9.i, %bb13.i
  %_18.i = icmp eq i64 %_15, 0
  br i1 %_18.i, label %bb6, label %bb15.i

bb15.i:                                           ; preds = %bb2.i14
  %_19.not.i = icmp ult i64 %_15, %6
  br i1 %_19.not.i, label %bb19.i, label %bb16.i

bb16.i:                                           ; preds = %bb15.i
  %10 = icmp eq i64 %iter.sroa.0.0, %len.i.i.i
  br i1 %10, label %bb6, label %bb18

bb19.i:                                           ; preds = %bb15.i
  %11 = getelementptr inbounds nuw i8, ptr %_10.i.i.i, i64 %_15
  %self2.i = load i8, ptr %11, align 1, !alias.scope !1119, !noundef !23
  %12 = icmp sgt i8 %self2.i, -65
  br i1 %12, label %bb6, label %bb18

bb5:                                              ; preds = %bb2
  %_6.i.i.i.i2.i.i16 = icmp eq i64 %tmp.sroa.0.0.copyload, 0
  br i1 %_6.i.i.i.i2.i.i16, label %bb9, label %bb2.i.i.i3.i.i17

bb2.i.i.i3.i.i17:                                 ; preds = %bb5
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_10.i.i.i, i64 noundef %tmp.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1122
  br label %bb9

bb9:                                              ; preds = %bb2.i.i.i3.i.i17, %bb5
  %self1.i.i.i.i1.i.i20 = load i64, ptr %str, align 8, !range !1031, !alias.scope !1133, !noalias !1146, !noundef !23
  %_6.i.i.i.i2.i.i21 = icmp eq i64 %self1.i.i.i.i1.i.i20, 0
  br i1 %_6.i.i.i.i2.i.i21, label %bb11, label %bb11.sink.split

bb11.sink.split:                                  ; preds = %bb9, %bb10
  %self1.i.i.i.i1.i.i33.sink = phi i64 [ %self1.i.i.i.i1.i.i33, %bb10 ], [ %self1.i.i.i.i1.i.i20, %bb9 ]
  %_0.sroa.0.0.in.ph = phi i64 [ %iter.sroa.0.0, %bb10 ], [ %_23, %bb9 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_24, i64 noundef %self1.i.i.i.i1.i.i33.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !23
  br label %bb11

bb11:                                             ; preds = %bb11.sink.split, %bb10, %bb9
  %_0.sroa.0.0.in = phi i64 [ %_23, %bb9 ], [ %iter.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.in.ph, %bb11.sink.split ]
  %_0.sroa.0.0 = trunc i64 %_0.sroa.0.0.in to i32
  ret i32 %_0.sroa.0.0

bb18:                                             ; preds = %bb19.i, %bb13.i, %bb2.i5, %bb16.i
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_10.i.i.i, i64 noundef %6, i64 noundef %iter.sroa.0.0, i64 noundef %_15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_224f273bde1b2028970a21d24455ab16) #23
          to label %unreachable unwind label %cleanup1

unreachable:                                      ; preds = %bb18
  unreachable

bb6:                                              ; preds = %bb2.i14, %bb16.i, %bb19.i
  %data.i = getelementptr inbounds nuw i8, ptr %_10.i.i.i, i64 %iter.sroa.0.0
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %_24, ptr nonnull %data.i, i64 %_23), !noalias !1148
  %13 = icmp eq i32 %bcmp.i, 0
  br i1 %13, label %bb7, label %bb2

bb7:                                              ; preds = %bb6
  %_6.i.i.i.i2.i.i29 = icmp eq i64 %tmp.sroa.0.0.copyload, 0
  br i1 %_6.i.i.i.i2.i.i29, label %bb10, label %bb2.i.i.i3.i.i30

bb2.i.i.i3.i.i30:                                 ; preds = %bb7
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_10.i.i.i, i64 noundef %tmp.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1152
  br label %bb10

bb10:                                             ; preds = %bb2.i.i.i3.i.i30, %bb7
  %self1.i.i.i.i1.i.i33 = load i64, ptr %str, align 8, !range !1031, !alias.scope !1163, !noalias !1176, !noundef !23
  %_6.i.i.i.i2.i.i34 = icmp eq i64 %self1.i.i.i.i1.i.i33, 0
  br i1 %_6.i.i.i.i2.i.i34, label %bb11, label %bb11.sink.split

bb14:                                             ; preds = %bb2.i.i.i3.i.i, %bb13
  resume { ptr, i32 } %.pn
}
