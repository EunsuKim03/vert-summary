define noundef i32 @f_gold(i32 noundef %a, i32 noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %out.i = alloca [24 x i8], align 8
  %buf.i = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf.i), !noalias !1042
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %out.i), !noalias !1042
  %_4.i = icmp slt i32 %0, 0
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1042
  br i1 %_4.i, label %bb1.i, label %bb3.i

bb3.i:                                            ; preds = %start
; call __rustc::__rust_alloc
  %1 = tail call noundef dereferenceable_or_null(10) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 10, i64 noundef range(i64 1, 5) 1) #21, !noalias !1046
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb3.i.i, label %bb10.i

bb3.i.i:                                          ; preds = %bb3.i
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 1, i64 10) #22, !noalias !1042
  unreachable

bb1.i:                                            ; preds = %start
; call __rustc::__rust_alloc
  %3 = tail call noundef dereferenceable_or_null(11) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 11, i64 noundef range(i64 1, 5) 1) #21, !noalias !1049
  %4 = icmp eq ptr %3, null
  br i1 %4, label %bb3.i2.i, label %bb9.i

bb3.i2.i:                                         ; preds = %bb1.i
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 1, i64 11) #22, !noalias !1042
  unreachable

bb10.i:                                           ; preds = %bb3.i
  store i64 10, ptr %out.i, align 8, !noalias !1042
  %_9.sroa.4.0.out.sroa_idx.i = getelementptr inbounds nuw i8, ptr %out.i, i64 8
  store ptr %1, ptr %_9.sroa.4.0.out.sroa_idx.i, align 8, !noalias !1042
  %_9.sroa.5.0.out.sroa_idx.i = getelementptr inbounds nuw i8, ptr %out.i, i64 16
  store i64 0, ptr %_9.sroa.5.0.out.sroa_idx.i, align 8, !noalias !1042
  br label %bb4.i

bb4.i:                                            ; preds = %bb9.i, %bb10.i
  %_10.i.i14.i = phi ptr [ %3, %bb9.i ], [ %1, %bb10.i ]
  %self2.i.i.i.i = phi i64 [ 11, %bb9.i ], [ 10, %bb10.i ]
  %len.i.i.i.i = phi i64 [ 1, %bb9.i ], [ 0, %bb10.i ]
  %_24.sroa.0.0.i = tail call i32 @llvm.abs.i32(i32 %0, i1 false)
; invoke core::fmt::num::imp::<impl u32>::_fmt
  %5 = invoke { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1610a2f939cfe08fE"(i32 noundef %_24.sroa.0.0.i, ptr noalias noundef nonnull align 1 %buf.i, i64 noundef 10)
          to label %bb5.i unwind label %bb7.i, !noalias !1042

bb9.i:                                            ; preds = %bb1.i
  store i64 11, ptr %out.i, align 8, !noalias !1042
  %_6.sroa.4.0.out.sroa_idx.i = getelementptr inbounds nuw i8, ptr %out.i, i64 8
  store ptr %3, ptr %_6.sroa.4.0.out.sroa_idx.i, align 8, !noalias !1042
  %_6.sroa.5.0.out.sroa_idx.i = getelementptr inbounds nuw i8, ptr %out.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  store i8 45, ptr %3, align 1, !noalias !1055
  store i64 1, ptr %_6.sroa.5.0.out.sroa_idx.i, align 8, !alias.scope !1052, !noalias !1042
  br label %bb4.i

bb5.i:                                            ; preds = %bb4.i
  %string.0.i = extractvalue { ptr, i64 } %5, 0
  %string.1.i = extractvalue { ptr, i64 } %5, 1
  %6 = icmp ne ptr %string.0.i, null
  call void @llvm.assume(i1 %6)
  call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  %7 = getelementptr inbounds nuw i8, ptr %out.i, i64 16
  %_9.i.i.i.i = sub nuw nsw i64 %self2.i.i.i.i, %len.i.i.i.i
  %_7.i.i.i.i = icmp ugt i64 %string.1.i, %_9.i.i.i.i
  br i1 %_7.i.i.i.i, label %bb1.i.i.i.i, label %"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hae70db860fe42023E.exit", !prof !909

bb1.i.i.i.i:                                      ; preds = %bb5.i
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hafa22494dd9ddf22E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %out.i, i64 noundef %len.i.i.i.i, i64 noundef %string.1.i)
          to label %.noexc6.i unwind label %bb7.i

.noexc6.i:                                        ; preds = %bb1.i.i.i.i
  %len.pre.i.i.i = load i64, ptr %7, align 8, !alias.scope !1062, !noalias !1042
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %out.i, i64 8
  %_10.i.i.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !1062, !noalias !1042
  br label %"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hae70db860fe42023E.exit"

bb6.i:                                            ; preds = %bb2.i.i.i3.i.i.i, %bb7.i
  resume { ptr, i32 } %lpad.thr_comm.i

bb7.i:                                            ; preds = %bb1.i.i.i.i, %bb4.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %self1.i.i.i.i1.i.i.i = load i64, ptr %out.i, align 8, !range !1031, !alias.scope !1078, !noalias !1081, !noundef !23
  %_6.i.i.i.i2.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i, label %bb6.i, label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb7.i
  %8 = getelementptr inbounds nuw i8, ptr %out.i, i64 8
  %self3.i.i.i.i4.i.i.i = load ptr, ptr %8, align 8, !alias.scope !1078, !noalias !1081, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i, i64 noundef %self1.i.i.i.i1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1083
  br label %bb6.i

"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hae70db860fe42023E.exit": ; preds = %bb5.i, %.noexc6.i
  %_10.i.i.i = phi ptr [ %_10.i.i14.i, %bb5.i ], [ %_10.i.i.pre.i, %.noexc6.i ]
  %len.i.i.i = phi i64 [ %len.i.i.i.i, %bb5.i ], [ %len.pre.i.i.i, %.noexc6.i ]
  %_9.i.i.i = icmp sgt i64 %len.i.i.i, -1
  call void @llvm.assume(i1 %_9.i.i.i)
  %dst.i.i.i = getelementptr inbounds nuw i8, ptr %_10.i.i.i, i64 %len.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %dst.i.i.i, ptr nonnull readonly align 1 %string.0.i, i64 %string.1.i, i1 false), !noalias !1084
  %9 = add i64 %len.i.i.i, %string.1.i
  %s.sroa.0.0.copyload = load i64, ptr %out.i, align 8, !noalias !1085
  %s.sroa.5.0.out.i.sroa_idx = getelementptr inbounds nuw i8, ptr %out.i, i64 8
  %s.sroa.5.0.copyload = load ptr, ptr %s.sroa.5.0.out.i.sroa_idx, align 8, !noalias !1085, !nonnull !23, !noundef !23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %out.i), !noalias !1042
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf.i), !noalias !1042
  %_29 = getelementptr i8, ptr %s.sroa.5.0.copyload, i64 %9
  %10 = lshr i64 %9, 5
  %_65.i = getelementptr inbounds nuw [32 x i8], ptr %s.sroa.5.0.copyload, i64 %10
  %11 = ptrtoint ptr %_29 to i64
  br label %bb1

bb1:                                              ; preds = %bb2, %"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hae70db860fe42023E.exit"
  %i.sroa.0.0 = phi i64 [ 0, %"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hae70db860fe42023E.exit" ], [ %27, %bb2 ]
  %_3.i = icmp ugt i64 %i.sroa.0.0, 31
  br i1 %_3.i, label %bb1.i4, label %bb25.i

bb1.i4:                                           ; preds = %bb1
  %_1042.not.i = icmp eq i64 %i.sroa.0.0, 32
  br i1 %_1042.not.i, label %bb14.i, label %bb4.i5

bb25.i:                                           ; preds = %bb19.i, %bb18.i, %bb14.i, %bb1
  %_9.sroa.0.0 = phi ptr [ %_19.i.i, %bb14.i ], [ %s.sroa.5.0.copyload, %bb1 ], [ %_9.sroa.0.2, %bb18.i ], [ %_29, %bb19.i ]
  %remainder.sroa.0.0.i = phi i64 [ %remainder.sroa.0.1.lcssa.i, %bb14.i ], [ %i.sroa.0.0, %bb1 ], [ %remainder.sroa.0.1.lcssa.i, %bb18.i ], [ %remainder.sroa.0.1.lcssa.i, %bb19.i ]
  %_39.not57.i = icmp eq i64 %remainder.sroa.0.0.i, 0
  br i1 %_39.not57.i, label %bb14, label %bb27.i

bb4.i5:                                           ; preds = %bb1.i4, %bb5.i6
  %remainder.sroa.0.145.i = phi i64 [ %18, %bb5.i6 ], [ %i.sroa.0.0, %bb1.i4 ]
  %chunks.sroa.0.044.i = phi ptr [ %chunks.sroa.0.1.i, %bb5.i6 ], [ %s.sroa.5.0.copyload, %bb1.i4 ]
  %bytes_skipped.sroa.0.043.i = phi i64 [ %17, %bb5.i6 ], [ 0, %bb1.i4 ]
  %_73.i = icmp eq ptr %chunks.sroa.0.044.i, %_65.i
  br i1 %_73.i, label %bb14.i, label %bb5.i6

bb14.i:                                           ; preds = %bb5.i6, %bb4.i5, %bb1.i4
  %bytes_skipped.sroa.0.0.lcssa.i = phi i64 [ 0, %bb1.i4 ], [ %bytes_skipped.sroa.0.043.i, %bb4.i5 ], [ %17, %bb5.i6 ]
  %remainder.sroa.0.1.lcssa.i = phi i64 [ 32, %bb1.i4 ], [ %remainder.sroa.0.145.i, %bb4.i5 ], [ %18, %bb5.i6 ]
  %_19.i.i = getelementptr inbounds nuw i8, ptr %s.sroa.5.0.copyload, i64 %bytes_skipped.sroa.0.0.lcssa.i
  %.not27.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i, %9
  call void @llvm.assume(i1 %.not27.i)
  %_30.not53.i = icmp samesign eq i64 %9, %bytes_skipped.sroa.0.0.lcssa.i
  br i1 %_30.not53.i, label %bb25.i, label %bb18.i

bb5.i6:                                           ; preds = %bb4.i5
  %chunks.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 32
  %12 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 16
  %wide.load = load <16 x i8>, ptr %chunks.sroa.0.044.i, align 1, !noalias !1086
  %wide.load36 = load <16 x i8>, ptr %12, align 1, !noalias !1086
  %13 = icmp sgt <16 x i8> %wide.load, splat (i8 -65)
  %14 = icmp sgt <16 x i8> %wide.load36, splat (i8 -65)
  %15 = zext <16 x i1> %13 to <16 x i8>
  %16 = zext <16 x i1> %14 to <16 x i8>
  %start_bytes.i.sroa.0.0.vec.extract = extractelement <16 x i8> %15, i64 0
  %start_bytes.i.sroa.0.1.vec.extract = extractelement <16 x i8> %15, i64 1
  %start_bytes.i.sroa.0.2.vec.extract = extractelement <16 x i8> %15, i64 2
  %start_bytes.i.sroa.0.3.vec.extract = extractelement <16 x i8> %15, i64 3
  %start_bytes.i.sroa.0.4.vec.extract = extractelement <16 x i8> %15, i64 4
  %start_bytes.i.sroa.0.5.vec.extract = extractelement <16 x i8> %15, i64 5
  %start_bytes.i.sroa.0.6.vec.extract = extractelement <16 x i8> %15, i64 6
  %start_bytes.i.sroa.0.7.vec.extract = extractelement <16 x i8> %15, i64 7
  %start_bytes.i.sroa.0.8.vec.extract = extractelement <16 x i8> %15, i64 8
  %start_bytes.i.sroa.0.9.vec.extract = extractelement <16 x i8> %15, i64 9
  %start_bytes.i.sroa.0.10.vec.extract = extractelement <16 x i8> %15, i64 10
  %start_bytes.i.sroa.0.11.vec.extract = extractelement <16 x i8> %15, i64 11
  %start_bytes.i.sroa.0.12.vec.extract = extractelement <16 x i8> %15, i64 12
  %start_bytes.i.sroa.0.13.vec.extract = extractelement <16 x i8> %15, i64 13
  %start_bytes.i.sroa.0.14.vec.extract = extractelement <16 x i8> %15, i64 14
  %start_bytes.i.sroa.0.15.vec.extract = extractelement <16 x i8> %15, i64 15
  %start_bytes.i.sroa.21.16.vec.extract = extractelement <16 x i8> %16, i64 0
  %start_bytes.i.sroa.21.17.vec.extract = extractelement <16 x i8> %16, i64 1
  %start_bytes.i.sroa.21.18.vec.extract = extractelement <16 x i8> %16, i64 2
  %start_bytes.i.sroa.21.19.vec.extract = extractelement <16 x i8> %16, i64 3
  %start_bytes.i.sroa.21.20.vec.extract = extractelement <16 x i8> %16, i64 4
  %start_bytes.i.sroa.21.21.vec.extract = extractelement <16 x i8> %16, i64 5
  %start_bytes.i.sroa.21.22.vec.extract = extractelement <16 x i8> %16, i64 6
  %start_bytes.i.sroa.21.23.vec.extract = extractelement <16 x i8> %16, i64 7
  %start_bytes.i.sroa.21.24.vec.extract = extractelement <16 x i8> %16, i64 8
  %start_bytes.i.sroa.21.25.vec.extract = extractelement <16 x i8> %16, i64 9
  %start_bytes.i.sroa.21.26.vec.extract = extractelement <16 x i8> %16, i64 10
  %start_bytes.i.sroa.21.27.vec.extract = extractelement <16 x i8> %16, i64 11
  %start_bytes.i.sroa.21.28.vec.extract = extractelement <16 x i8> %16, i64 12
  %start_bytes.i.sroa.21.29.vec.extract = extractelement <16 x i8> %16, i64 13
  %start_bytes.i.sroa.21.30.vec.extract = extractelement <16 x i8> %16, i64 14
  %start_bytes.i.sroa.21.31.vec.extract = extractelement <16 x i8> %16, i64 15
  %_4.0.i.i.i.i.i.i.1.i = add nuw nsw i8 %start_bytes.i.sroa.0.1.vec.extract, %start_bytes.i.sroa.0.0.vec.extract
  %_4.0.i.i.i.i.i.i.2.i = add nuw nsw i8 %_4.0.i.i.i.i.i.i.1.i, %start_bytes.i.sroa.0.2.vec.extract
  %_4.0.i.i.i.i.i.i.3.i = add nuw nsw i8 %_4.0.i.i.i.i.i.i.2.i, %start_bytes.i.sroa.0.3.vec.extract
  %_4.0.i.i.i.i.i.i.4.i = add nuw nsw i8 %_4.0.i.i.i.i.i.i.3.i, %start_bytes.i.sroa.0.4.vec.extract
  %_4.0.i.i.i.i.i.i.5.i = add nuw nsw i8 %_4.0.i.i.i.i.i.i.4.i, %start_bytes.i.sroa.0.5.vec.extract
  %_4.0.i.i.i.i.i.i.6.i = add i8 %_4.0.i.i.i.i.i.i.5.i, %start_bytes.i.sroa.0.6.vec.extract
  %_4.0.i.i.i.i.i.i.7.i = add i8 %_4.0.i.i.i.i.i.i.6.i, %start_bytes.i.sroa.0.7.vec.extract
  %_4.0.i.i.i.i.i.i.8.i = add i8 %_4.0.i.i.i.i.i.i.7.i, %start_bytes.i.sroa.0.8.vec.extract
  %_4.0.i.i.i.i.i.i.9.i = add i8 %_4.0.i.i.i.i.i.i.8.i, %start_bytes.i.sroa.0.9.vec.extract
  %_4.0.i.i.i.i.i.i.10.i = add i8 %_4.0.i.i.i.i.i.i.9.i, %start_bytes.i.sroa.0.10.vec.extract
  %_4.0.i.i.i.i.i.i.11.i = add i8 %_4.0.i.i.i.i.i.i.10.i, %start_bytes.i.sroa.0.11.vec.extract
  %_4.0.i.i.i.i.i.i.12.i = add i8 %_4.0.i.i.i.i.i.i.11.i, %start_bytes.i.sroa.0.12.vec.extract
  %_4.0.i.i.i.i.i.i.13.i = add i8 %_4.0.i.i.i.i.i.i.12.i, %start_bytes.i.sroa.0.13.vec.extract
  %_4.0.i.i.i.i.i.i.14.i = add i8 %_4.0.i.i.i.i.i.i.13.i, %start_bytes.i.sroa.0.14.vec.extract
  %_4.0.i.i.i.i.i.i.15.i = add i8 %_4.0.i.i.i.i.i.i.14.i, %start_bytes.i.sroa.0.15.vec.extract
  %_4.0.i.i.i.i.i.i.16.i = add i8 %_4.0.i.i.i.i.i.i.15.i, %start_bytes.i.sroa.21.16.vec.extract
  %_4.0.i.i.i.i.i.i.17.i = add i8 %_4.0.i.i.i.i.i.i.16.i, %start_bytes.i.sroa.21.17.vec.extract
  %_4.0.i.i.i.i.i.i.18.i = add i8 %_4.0.i.i.i.i.i.i.17.i, %start_bytes.i.sroa.21.18.vec.extract
  %_4.0.i.i.i.i.i.i.19.i = add i8 %_4.0.i.i.i.i.i.i.18.i, %start_bytes.i.sroa.21.19.vec.extract
  %_4.0.i.i.i.i.i.i.20.i = add i8 %_4.0.i.i.i.i.i.i.19.i, %start_bytes.i.sroa.21.20.vec.extract
  %_4.0.i.i.i.i.i.i.21.i = add i8 %_4.0.i.i.i.i.i.i.20.i, %start_bytes.i.sroa.21.21.vec.extract
  %_4.0.i.i.i.i.i.i.22.i = add i8 %_4.0.i.i.i.i.i.i.21.i, %start_bytes.i.sroa.21.22.vec.extract
  %_4.0.i.i.i.i.i.i.23.i = add i8 %_4.0.i.i.i.i.i.i.22.i, %start_bytes.i.sroa.21.23.vec.extract
  %_4.0.i.i.i.i.i.i.24.i = add i8 %_4.0.i.i.i.i.i.i.23.i, %start_bytes.i.sroa.21.24.vec.extract
  %_4.0.i.i.i.i.i.i.25.i = add i8 %_4.0.i.i.i.i.i.i.24.i, %start_bytes.i.sroa.21.25.vec.extract
  %_4.0.i.i.i.i.i.i.26.i = add i8 %_4.0.i.i.i.i.i.i.25.i, %start_bytes.i.sroa.21.26.vec.extract
  %_4.0.i.i.i.i.i.i.27.i = add i8 %_4.0.i.i.i.i.i.i.26.i, %start_bytes.i.sroa.21.27.vec.extract
  %_4.0.i.i.i.i.i.i.28.i = add i8 %_4.0.i.i.i.i.i.i.27.i, %start_bytes.i.sroa.21.28.vec.extract
  %_4.0.i.i.i.i.i.i.29.i = add i8 %_4.0.i.i.i.i.i.i.28.i, %start_bytes.i.sroa.21.29.vec.extract
  %_4.0.i.i.i.i.i.i.30.i = add i8 %_4.0.i.i.i.i.i.i.29.i, %start_bytes.i.sroa.21.30.vec.extract
  %_4.0.i.i.i.i.i.i.31.i = add i8 %_4.0.i.i.i.i.i.i.30.i, %start_bytes.i.sroa.21.31.vec.extract
  %17 = add i64 %bytes_skipped.sroa.0.043.i, 32
  %_25.i = zext i8 %_4.0.i.i.i.i.i.i.31.i to i64
  %18 = sub i64 %remainder.sroa.0.145.i, %_25.i
  %_10.i = icmp ugt i64 %18, 32
  br i1 %_10.i, label %bb4.i5, label %bb14.i

bb18.i:                                           ; preds = %bb14.i, %bb19.i
  %_9.sroa.0.2 = phi ptr [ %_19.i33.i, %bb19.i ], [ %_19.i.i, %bb14.i ]
  %b.i = load i8, ptr %_9.sroa.0.2, align 1, !noalias !1086, !noundef !23
  %_36.i = icmp slt i8 %b.i, -64
  br i1 %_36.i, label %bb19.i, label %bb25.i

bb19.i:                                           ; preds = %bb18.i
  %_19.i33.i = getelementptr inbounds nuw i8, ptr %_9.sroa.0.2, i64 1
  %_30.not.i = icmp eq ptr %_29, %_19.i33.i
  br i1 %_30.not.i, label %bb25.i, label %bb18.i

bb27.i:                                           ; preds = %bb25.i, %bb62.i
  %_9.sroa.0.1 = phi ptr [ %_19.i38.i, %bb62.i ], [ %_9.sroa.0.0, %bb25.i ]
  %remainder.sroa.0.259.i = phi i64 [ %21, %bb62.i ], [ %remainder.sroa.0.0.i, %bb25.i ]
  %_41.not.i = icmp eq ptr %_29, %_9.sroa.0.1
  br i1 %_41.not.i, label %bb3, label %bb62.i

bb62.i:                                           ; preds = %bb27.i
  %19 = ptrtoint ptr %_9.sroa.0.1 to i64
  %20 = sub nuw i64 %11, %19
  %21 = add i64 %remainder.sroa.0.259.i, -1
  %b15.i = load i8, ptr %_9.sroa.0.1, align 1, !noalias !1086, !noundef !23
  %_130.i = zext i8 %b15.i to i64
  %22 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i
  %_128.i = load i8, ptr %22, align 1, !noalias !1086, !noundef !23
  %slurp.i = zext i8 %_128.i to i64
  %_19.i38.i = getelementptr inbounds nuw i8, ptr %_9.sroa.0.1, i64 %slurp.i
  %.not28.i = icmp uge i64 %20, %slurp.i
  call void @llvm.assume(i1 %.not28.i)
  %_39.not.i = icmp eq i64 %21, 0
  br i1 %_39.not.i, label %bb14, label %bb27.i

bb14:                                             ; preds = %bb62.i, %bb25.i
  %_9.sroa.0.3.ph = phi ptr [ %_9.sroa.0.0, %bb25.i ], [ %_19.i38.i, %bb62.i ]
  %_7.i.i = icmp eq ptr %_9.sroa.0.3.ph, %_29
  br i1 %_7.i.i, label %bb3, label %bb14.i9

bb14.i9:                                          ; preds = %bb14
  %x.i = load i8, ptr %_9.sroa.0.3.ph, align 1, !noalias !1089, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i14, label %bb4.i10

bb4.i10:                                          ; preds = %bb14.i9
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_9.sroa.0.3.ph, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_29
  call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1089, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i11 = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i11 to i32
  %23 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i12, label %bb17

bb3.i14:                                          ; preds = %bb14.i9
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb17

bb6.i12:                                          ; preds = %bb4.i10
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %_9.sroa.0.3.ph, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_29
  call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1089, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %24 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb17

bb8.i:                                            ; preds = %bb6.i12
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_9.sroa.0.3.ph, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_29
  call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1089, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i13 = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %25 = or disjoint i32 %_27.i, %_25.i13
  br label %bb17

bb17:                                             ; preds = %bb3.i14, %bb8.i, %bb6.i12, %bb4.i10
  %_0.sroa.4.0.i.ph = phi i32 [ %23, %bb4.i10 ], [ %24, %bb6.i12 ], [ %25, %bb8.i ], [ %_7.i, %bb3.i14 ]
  %26 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  call void @llvm.assume(i1 %26)
  %_6 = icmp eq i32 %_0.sroa.4.0.i.ph, 57
  br i1 %_6, label %bb2, label %bb3

bb3:                                              ; preds = %bb14, %bb17, %bb27.i
  %_41 = icmp sgt i64 %9, -1
  call void @llvm.assume(i1 %_41)
  %_6.i.i.i.i2.i.i16 = icmp eq i64 %s.sroa.0.0.copyload, 0
  br i1 %_6.i.i.i.i2.i.i16, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3b47f915c9f24febE.exit19", label %bb2.i.i.i3.i.i17

bb2.i.i.i3.i.i17:                                 ; preds = %bb3
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %s.sroa.5.0.copyload, i64 noundef %s.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1092
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3b47f915c9f24febE.exit19"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3b47f915c9f24febE.exit19": ; preds = %bb3, %bb2.i.i.i3.i.i17
  %_14 = trunc i64 %9 to i32
  %_12 = icmp ne i64 %i.sroa.0.0, %9
  %_16 = sext i1 %_12 to i32
  %_14.pn = add i32 %_16, %_14
  %result.sroa.0.0 = mul i32 %_14.pn, %a
  ret i32 %result.sroa.0.0

bb2:                                              ; preds = %bb17
  %27 = add i64 %i.sroa.0.0, 1
  br label %bb1
}
