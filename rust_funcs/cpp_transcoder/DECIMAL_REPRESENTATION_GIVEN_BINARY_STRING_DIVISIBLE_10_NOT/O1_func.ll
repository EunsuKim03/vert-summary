define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %bin) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %start_bytes.i.i = alloca [32 x i8], align 1
  %0 = getelementptr inbounds nuw i8, ptr %bin, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1630, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %1 = getelementptr inbounds nuw i8, ptr %bin, i64 8
  %_6.i.i = load ptr, ptr %1, align 8, !alias.scope !1633, !nonnull !37, !noundef !37
  %_7.i = getelementptr i8, ptr %_6.i.i, i64 %_0.i
  %2 = icmp samesign eq i64 %_0.i, 0
  %_24.i.i.i.i = getelementptr inbounds i8, ptr %_7.i, i64 -1
  %spec.select.i = select i1 %2, ptr %_6.i.i, ptr %_24.i.i.i.i
  br i1 %2, label %bb4, label %bb17.i.i.i

cleanup:                                          ; preds = %bb2.i7.invoke
  %3 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4c345d693a8369d9E"(ptr noalias noundef align 8 dereferenceable(24) %bin) #28
          to label %common.resume unwind label %terminate

bb17.i.i.i:                                       ; preds = %start
  %w.i.i.i = load i8, ptr %_24.i.i.i.i, align 1, !noalias !1638, !noundef !37
  %_6.i.i.i = icmp sgt i8 %w.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb17.i.i.i
  %4 = icmp ne ptr %_6.i.i, %spec.select.i
  tail call void @llvm.assume(i1 %4)
  %_24.i13.i.i.i = getelementptr inbounds i8, ptr %spec.select.i, i64 -1
  %z.i.i.i = load i8, ptr %_24.i13.i.i.i, align 1, !noalias !1638, !noundef !37
  %_26.i.i.i = and i8 %z.i.i.i, 31
  %5 = zext nneg i8 %_26.i.i.i to i32
  %_12.i.i.i = icmp slt i8 %z.i.i.i, -64
  br i1 %_12.i.i.i, label %bb6.i.i.i, label %bb13.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
  %_8.i.i.i = zext nneg i8 %w.i.i.i to i32
  br label %bb4

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %6 = icmp ne ptr %_6.i.i, %_24.i13.i.i.i
  tail call void @llvm.assume(i1 %6)
  %_24.i19.i.i.i = getelementptr inbounds i8, ptr %spec.select.i, i64 -2
  %y.i.i.i = load i8, ptr %_24.i19.i.i.i, align 1, !noalias !1638, !noundef !37
  %_31.i.i.i = and i8 %y.i.i.i, 15
  %7 = zext nneg i8 %_31.i.i.i to i32
  %_16.i.i.i = icmp slt i8 %y.i.i.i, -64
  br i1 %_16.i.i.i, label %bb8.i.i.i, label %bb11.i.i.i

bb13.i.i.i:                                       ; preds = %bb11.i.i.i, %bb4.i.i.i
  %ch.sroa.0.0.i.i.i = phi i32 [ %12, %bb11.i.i.i ], [ %5, %bb4.i.i.i ]
  %_43.i.i.i = shl nuw nsw i32 %ch.sroa.0.0.i.i.i, 6
  %_45.i.i.i = and i8 %w.i.i.i, 63
  %_44.i.i.i = zext nneg i8 %_45.i.i.i to i32
  %8 = or disjoint i32 %_43.i.i.i, %_44.i.i.i
  br label %bb4

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %9 = icmp ne ptr %_6.i.i, %_24.i19.i.i.i
  tail call void @llvm.assume(i1 %9)
  %_24.i25.i.i.i = getelementptr inbounds i8, ptr %spec.select.i, i64 -3
  %x.i.i.i = load i8, ptr %_24.i25.i.i.i, align 1, !noalias !1638, !noundef !37
  %_36.i.i.i = and i8 %x.i.i.i, 7
  %10 = zext nneg i8 %_36.i.i.i to i32
  %_37.i.i.i = shl nuw nsw i32 %10, 6
  %_39.i.i.i = and i8 %y.i.i.i, 63
  %_38.i.i.i = zext nneg i8 %_39.i.i.i to i32
  %11 = or disjoint i32 %_37.i.i.i, %_38.i.i.i
  br label %bb11.i.i.i

bb11.i.i.i:                                       ; preds = %bb8.i.i.i, %bb6.i.i.i
  %ch.sroa.0.1.i.i.i = phi i32 [ %11, %bb8.i.i.i ], [ %7, %bb6.i.i.i ]
  %_40.i.i.i = shl nuw nsw i32 %ch.sroa.0.1.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %12 = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  br label %bb13.i.i.i

bb4:                                              ; preds = %bb13.i.i.i, %bb3.i.i.i, %start
  %spec.select.i.i = phi i32 [ %8, %bb13.i.i.i ], [ %_8.i.i.i, %bb3.i.i.i ], [ 1114112, %start ]
  switch i32 %spec.select.i.i, label %bb7 [
    i32 1114112, label %bb2.i7.invoke
    i32 49, label %bb6
  ], !prof !1643

bb2.i7.invoke:                                    ; preds = %bb17, %bb4
  %13 = phi ptr [ @alloc_727145921074ec6c043ddee0f6bf3ae3, %bb4 ], [ @alloc_3ff78cd81411cbc57f0cb57b37f5ad37, %bb17 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %13) #25
          to label %bb2.i7.cont unwind label %cleanup

bb2.i7.cont:                                      ; preds = %bb2.i7.invoke
  unreachable

bb7:                                              ; preds = %bb4
  %_14 = add nsw i64 %_0.i, -2
  %_0.i.i.i.i.not.not35 = icmp eq i64 %_14, 0
  br i1 %_0.i.i.i.i.not.not35, label %bb14, label %bb13.lr.ph

bb13.lr.ph:                                       ; preds = %bb7
  %iter.sroa.4.137 = add nsw i64 %_0.i, -3
  %_0.i1.i.i.i36 = add nsw i64 %_0.i, -3
  %14 = lshr i64 %_0.i, 5
  %_65.i.i = getelementptr inbounds nuw [32 x i8], ptr %_6.i.i, i64 %14
  %_92.sroa.34.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 31
  %_92.sroa.33.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 30
  %_92.sroa.32.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 29
  %_92.sroa.31.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 28
  %_92.sroa.30.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 27
  %_92.sroa.29.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 26
  %_92.sroa.28.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 25
  %_92.sroa.27.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 24
  %_92.sroa.26.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 23
  %_92.sroa.25.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 22
  %_92.sroa.24.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 21
  %_92.sroa.23.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 20
  %_92.sroa.22.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 19
  %_92.sroa.21.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 18
  %_92.sroa.20.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 17
  %_92.sroa.19.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 16
  %_92.sroa.18.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 15
  %_92.sroa.17.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 14
  %_92.sroa.16.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 13
  %_92.sroa.15.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 12
  %_92.sroa.14.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 11
  %_92.sroa.13.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 10
  %_92.sroa.12.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 9
  %_92.sroa.11.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 8
  %_92.sroa.10.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 7
  %_92.sroa.9.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 6
  %_92.sroa.8.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 5
  %_92.sroa.7.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 4
  %_92.sroa.6.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 3
  %_92.sroa.5.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 2
  %_92.sroa.4.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 1
  %15 = ptrtoint ptr %_7.i to i64
  br label %bb13

bb6:                                              ; preds = %bb4
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %bin)
          to label %bb36 unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb6
  %16 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %bin)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %17 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

common.resume:                                    ; preds = %cleanup, %cleanup.i.i12, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %16, %cleanup.i.i ], [ %21, %cleanup.i.i12 ], [ %3, %cleanup ]
  resume { ptr, i32 } %common.resume.op

bb13:                                             ; preds = %bb13.lr.ph, %bb32
  %iter.sroa.4.141 = phi i64 [ %iter.sroa.4.137, %bb13.lr.ph ], [ %iter.sroa.4.1, %bb32 ]
  %_0.i1.i.i.i40 = phi i64 [ %_0.i1.i.i.i36, %bb13.lr.ph ], [ %_0.i1.i.i.i, %bb32 ]
  %sum.sroa.0.039 = phi i32 [ 0, %bb13.lr.ph ], [ %sum.sroa.0.1, %bb32 ]
  %iter.sroa.4.038 = phi i64 [ %_14, %bb13.lr.ph ], [ %iter.sroa.4.141, %bb32 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1644
  %_3.i.i = icmp ugt i64 %_0.i1.i.i.i40, 31
  br i1 %_3.i.i, label %bb1.i.i31, label %bb25.i.i

bb14.loopexit:                                    ; preds = %bb32
  %18 = srem i32 %sum.sroa.0.1, 10
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  br label %bb14

bb14:                                             ; preds = %bb14.loopexit, %bb7
  %sum.sroa.0.0.lcssa = phi i32 [ 1, %bb7 ], [ %20, %bb14.loopexit ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %bin)
          to label %bb36 unwind label %cleanup.i.i12

cleanup.i.i12:                                    ; preds = %bb14
  %21 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %bin)
          to label %common.resume unwind label %terminate.i.i13

terminate.i.i13:                                  ; preds = %cleanup.i.i12
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

bb36:                                             ; preds = %bb14, %bb6
  %_0.sroa.0.1 = phi i32 [ 0, %bb6 ], [ %sum.sroa.0.0.lcssa, %bb14 ]
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %bin)
  ret i32 %_0.sroa.0.1

bb1.i.i31:                                        ; preds = %bb13
  %_1042.not.i.i = icmp eq i64 %_0.i1.i.i.i40, 32
  br i1 %_1042.not.i.i, label %bb14.i.i, label %bb4.i.i

bb25.i.i:                                         ; preds = %bb19.i.i, %bb18.i.i, %bb14.i.i, %bb13
  %_24.sroa.0.0 = phi ptr [ %_19.i.i.i, %bb14.i.i ], [ %_6.i.i, %bb13 ], [ %_7.i, %bb19.i.i ], [ %_24.sroa.0.3, %bb18.i.i ]
  %remainder.sroa.0.0.i.i = phi i64 [ %remainder.sroa.0.1.lcssa.i.i, %bb14.i.i ], [ %_0.i1.i.i.i40, %bb13 ], [ %remainder.sroa.0.1.lcssa.i.i, %bb18.i.i ], [ %remainder.sroa.0.1.lcssa.i.i, %bb19.i.i ]
  %_39.not57.i.i = icmp eq i64 %remainder.sroa.0.0.i.i, 0
  br i1 %_39.not57.i.i, label %bb5.critedge.i, label %bb27.i.i

bb4.i.i:                                          ; preds = %bb1.i.i31, %bb2.i.i.i.i
  %remainder.sroa.0.145.i.i = phi i64 [ %24, %bb2.i.i.i.i ], [ %_0.i1.i.i.i40, %bb1.i.i31 ]
  %chunks.sroa.0.044.i.i = phi ptr [ %chunks.sroa.0.1.i.i, %bb2.i.i.i.i ], [ %_6.i.i, %bb1.i.i31 ]
  %bytes_skipped.sroa.0.043.i.i = phi i64 [ %23, %bb2.i.i.i.i ], [ 0, %bb1.i.i31 ]
  %_73.i.i = icmp eq ptr %chunks.sroa.0.044.i.i, %_65.i.i
  %chunks.sroa.0.1.idx.i.i = select i1 %_73.i.i, i64 0, i64 32
  %chunks.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %chunks.sroa.0.1.idx.i.i
  br i1 %_73.i.i, label %bb14.i.i, label %bb5.i.i

bb14.i.i:                                         ; preds = %bb2.i.i.i.i, %bb4.i.i, %bb1.i.i31
  %bytes_skipped.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb1.i.i31 ], [ %bytes_skipped.sroa.0.043.i.i, %bb4.i.i ], [ %23, %bb2.i.i.i.i ]
  %remainder.sroa.0.1.lcssa.i.i = phi i64 [ %_0.i1.i.i.i40, %bb1.i.i31 ], [ %remainder.sroa.0.145.i.i, %bb4.i.i ], [ %24, %bb2.i.i.i.i ]
  %_19.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %bytes_skipped.sroa.0.0.lcssa.i.i
  %.not27.i.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i.i, %_0.i
  tail call void @llvm.assume(i1 %.not27.i.i)
  %_30.not53.i.i = icmp samesign eq i64 %_0.i, %bytes_skipped.sroa.0.0.lcssa.i.i
  br i1 %_30.not53.i.i, label %bb25.i.i, label %bb18.i.i

bb5.i.i:                                          ; preds = %bb4.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %start_bytes.i.i, i8 0, i64 32, i1 false), !noalias !1647
  br label %bb10.i.i

bb2.i.i.i.i:                                      ; preds = %bb10.i.i
  %_92.sroa.34.0.copyload.i.i = load i8, ptr %_92.sroa.34.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.33.0.copyload.i.i = load i8, ptr %_92.sroa.33.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.32.0.copyload.i.i = load i8, ptr %_92.sroa.32.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.31.0.copyload.i.i = load i8, ptr %_92.sroa.31.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.30.0.copyload.i.i = load i8, ptr %_92.sroa.30.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.29.0.copyload.i.i = load i8, ptr %_92.sroa.29.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.28.0.copyload.i.i = load i8, ptr %_92.sroa.28.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.27.0.copyload.i.i = load i8, ptr %_92.sroa.27.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.26.0.copyload.i.i = load i8, ptr %_92.sroa.26.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.25.0.copyload.i.i = load i8, ptr %_92.sroa.25.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.24.0.copyload.i.i = load i8, ptr %_92.sroa.24.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.23.0.copyload.i.i = load i8, ptr %_92.sroa.23.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.22.0.copyload.i.i = load i8, ptr %_92.sroa.22.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.21.0.copyload.i.i = load i8, ptr %_92.sroa.21.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.20.0.copyload.i.i = load i8, ptr %_92.sroa.20.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.19.0.copyload.i.i = load i8, ptr %_92.sroa.19.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.18.0.copyload.i.i = load i8, ptr %_92.sroa.18.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.17.0.copyload.i.i = load i8, ptr %_92.sroa.17.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.16.0.copyload.i.i = load i8, ptr %_92.sroa.16.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.15.0.copyload.i.i = load i8, ptr %_92.sroa.15.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.14.0.copyload.i.i = load i8, ptr %_92.sroa.14.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.13.0.copyload.i.i = load i8, ptr %_92.sroa.13.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.12.0.copyload.i.i = load i8, ptr %_92.sroa.12.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.11.0.copyload.i.i = load i8, ptr %_92.sroa.11.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.10.0.copyload.i.i = load i8, ptr %_92.sroa.10.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.9.0.copyload.i.i = load i8, ptr %_92.sroa.9.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.8.0.copyload.i.i = load i8, ptr %_92.sroa.8.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.7.0.copyload.i.i = load i8, ptr %_92.sroa.7.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.6.0.copyload.i.i = load i8, ptr %_92.sroa.6.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.5.0.copyload.i.i = load i8, ptr %_92.sroa.5.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.4.0.copyload.i.i = load i8, ptr %_92.sroa.4.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.0.0.copyload.i.i = load i8, ptr %start_bytes.i.i, align 1, !noalias !1647
  %_4.0.i.i.i.i.i.i.1.i.i = add i8 %_92.sroa.33.0.copyload.i.i, %_92.sroa.34.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.2.i.i = add i8 %_4.0.i.i.i.i.i.i.1.i.i, %_92.sroa.32.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.3.i.i = add i8 %_4.0.i.i.i.i.i.i.2.i.i, %_92.sroa.31.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.4.i.i = add i8 %_4.0.i.i.i.i.i.i.3.i.i, %_92.sroa.30.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.5.i.i = add i8 %_4.0.i.i.i.i.i.i.4.i.i, %_92.sroa.29.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.6.i.i = add i8 %_4.0.i.i.i.i.i.i.5.i.i, %_92.sroa.28.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.7.i.i = add i8 %_4.0.i.i.i.i.i.i.6.i.i, %_92.sroa.27.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.8.i.i = add i8 %_4.0.i.i.i.i.i.i.7.i.i, %_92.sroa.26.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.9.i.i = add i8 %_4.0.i.i.i.i.i.i.8.i.i, %_92.sroa.25.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.10.i.i = add i8 %_4.0.i.i.i.i.i.i.9.i.i, %_92.sroa.24.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.11.i.i = add i8 %_4.0.i.i.i.i.i.i.10.i.i, %_92.sroa.23.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.12.i.i = add i8 %_4.0.i.i.i.i.i.i.11.i.i, %_92.sroa.22.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.13.i.i = add i8 %_4.0.i.i.i.i.i.i.12.i.i, %_92.sroa.21.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.14.i.i = add i8 %_4.0.i.i.i.i.i.i.13.i.i, %_92.sroa.20.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.15.i.i = add i8 %_4.0.i.i.i.i.i.i.14.i.i, %_92.sroa.19.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.16.i.i = add i8 %_4.0.i.i.i.i.i.i.15.i.i, %_92.sroa.18.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.17.i.i = add i8 %_4.0.i.i.i.i.i.i.16.i.i, %_92.sroa.17.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.18.i.i = add i8 %_4.0.i.i.i.i.i.i.17.i.i, %_92.sroa.16.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.19.i.i = add i8 %_4.0.i.i.i.i.i.i.18.i.i, %_92.sroa.15.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.20.i.i = add i8 %_4.0.i.i.i.i.i.i.19.i.i, %_92.sroa.14.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.21.i.i = add i8 %_4.0.i.i.i.i.i.i.20.i.i, %_92.sroa.13.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.22.i.i = add i8 %_4.0.i.i.i.i.i.i.21.i.i, %_92.sroa.12.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.23.i.i = add i8 %_4.0.i.i.i.i.i.i.22.i.i, %_92.sroa.11.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.24.i.i = add i8 %_4.0.i.i.i.i.i.i.23.i.i, %_92.sroa.10.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.25.i.i = add i8 %_4.0.i.i.i.i.i.i.24.i.i, %_92.sroa.9.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.26.i.i = add i8 %_4.0.i.i.i.i.i.i.25.i.i, %_92.sroa.8.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.27.i.i = add i8 %_4.0.i.i.i.i.i.i.26.i.i, %_92.sroa.7.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.28.i.i = add i8 %_4.0.i.i.i.i.i.i.27.i.i, %_92.sroa.6.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.29.i.i = add i8 %_4.0.i.i.i.i.i.i.28.i.i, %_92.sroa.5.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.30.i.i = add i8 %_4.0.i.i.i.i.i.i.29.i.i, %_92.sroa.4.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.31.i.i = add i8 %_4.0.i.i.i.i.i.i.30.i.i, %_92.sroa.0.0.copyload.i.i
  %23 = add i64 %bytes_skipped.sroa.0.043.i.i, 32
  %_25.i.i = zext i8 %_4.0.i.i.i.i.i.i.31.i.i to i64
  %24 = sub i64 %remainder.sroa.0.145.i.i, %_25.i.i
  %_10.i.i = icmp ugt i64 %24, 32
  br i1 %_10.i.i, label %bb4.i.i, label %bb14.i.i

bb10.i.i:                                         ; preds = %bb10.i.i, %bb5.i.i
  %iter.sroa.0.041.i.i = phi i64 [ 0, %bb5.i.i ], [ %_88.i.i.3, %bb10.i.i ]
  %_88.i.i = or disjoint i64 %iter.sroa.0.041.i.i, 1
  %25 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %iter.sroa.0.041.i.i
  %byte.i.i = load i8, ptr %25, align 1, !noalias !1647, !noundef !37
  %_22.i.i = icmp sgt i8 %byte.i.i, -65
  %26 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %iter.sroa.0.041.i.i
  %27 = zext i1 %_22.i.i to i8
  store i8 %27, ptr %26, align 1, !noalias !1647
  %_88.i.i.1 = or disjoint i64 %iter.sroa.0.041.i.i, 2
  %28 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i
  %byte.i.i.1 = load i8, ptr %28, align 1, !noalias !1647, !noundef !37
  %_22.i.i.1 = icmp sgt i8 %byte.i.i.1, -65
  %29 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i
  %30 = zext i1 %_22.i.i.1 to i8
  store i8 %30, ptr %29, align 1, !noalias !1647
  %_88.i.i.2 = or disjoint i64 %iter.sroa.0.041.i.i, 3
  %31 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i.1
  %byte.i.i.2 = load i8, ptr %31, align 1, !noalias !1647, !noundef !37
  %_22.i.i.2 = icmp sgt i8 %byte.i.i.2, -65
  %32 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i.1
  %33 = zext i1 %_22.i.i.2 to i8
  store i8 %33, ptr %32, align 1, !noalias !1647
  %_88.i.i.3 = add nuw nsw i64 %iter.sroa.0.041.i.i, 4
  %34 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i.2
  %byte.i.i.3 = load i8, ptr %34, align 1, !noalias !1647, !noundef !37
  %_22.i.i.3 = icmp sgt i8 %byte.i.i.3, -65
  %35 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i.2
  %36 = zext i1 %_22.i.i.3 to i8
  store i8 %36, ptr %35, align 1, !noalias !1647
  %exitcond.not.i.i.3 = icmp eq i64 %_88.i.i.3, 32
  br i1 %exitcond.not.i.i.3, label %bb2.i.i.i.i, label %bb10.i.i

bb18.i.i:                                         ; preds = %bb14.i.i, %bb19.i.i
  %_24.sroa.0.3 = phi ptr [ %_19.i33.i.i, %bb19.i.i ], [ %_19.i.i.i, %bb14.i.i ]
  %b.i.i = load i8, ptr %_24.sroa.0.3, align 1, !noalias !1647, !noundef !37
  %_36.i.i = icmp slt i8 %b.i.i, -64
  br i1 %_36.i.i, label %bb19.i.i, label %bb25.i.i

bb19.i.i:                                         ; preds = %bb18.i.i
  %_19.i33.i.i = getelementptr inbounds nuw i8, ptr %_24.sroa.0.3, i64 1
  %_30.not.i.i = icmp eq ptr %_7.i, %_19.i33.i.i
  br i1 %_30.not.i.i, label %bb25.i.i, label %bb18.i.i

bb27.i.i:                                         ; preds = %bb25.i.i, %bb28.i.i
  %remainder.sroa.0.259.i.i = phi i64 [ %39, %bb28.i.i ], [ %remainder.sroa.0.0.i.i, %bb25.i.i ]
  %_19.i385658.i.i = phi ptr [ %_19.i38.i.i, %bb28.i.i ], [ %_24.sroa.0.0, %bb25.i.i ]
  %_41.not.i.i = icmp eq ptr %_7.i, %_19.i385658.i.i
  br i1 %_41.not.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i", label %bb28.i.i

bb28.i.i:                                         ; preds = %bb27.i.i
  %37 = ptrtoint ptr %_19.i385658.i.i to i64
  %38 = sub nuw i64 %15, %37
  %39 = add i64 %remainder.sroa.0.259.i.i, -1
  %b15.i.i = load i8, ptr %_19.i385658.i.i, align 1, !noalias !1647, !noundef !37
  %_130.i.i = zext i8 %b15.i.i to i64
  %40 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i
  %_128.i.i = load i8, ptr %40, align 1, !noalias !1647, !noundef !37
  %slurp.i.i = zext i8 %_128.i.i to i64
  %_19.i38.i.i = getelementptr inbounds nuw i8, ptr %_19.i385658.i.i, i64 %slurp.i.i
  %.not28.i.i = icmp uge i64 %38, %slurp.i.i
  tail call void @llvm.assume(i1 %.not28.i.i)
  %_39.not.i.i = icmp eq i64 %39, 0
  br i1 %_39.not.i.i, label %bb5.critedge.i, label %bb27.i.i

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i": ; preds = %bb27.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1644
  br label %bb17

bb5.critedge.i:                                   ; preds = %bb28.i.i, %bb25.i.i
  %_24.sroa.0.1 = phi ptr [ %_24.sroa.0.0, %bb25.i.i ], [ %_19.i38.i.i, %bb28.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1644
  %_7.i.i.i.i = icmp ne ptr %_24.sroa.0.1, %_7.i
  %spec.select.idx = zext i1 %_7.i.i.i.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %_24.sroa.0.1, i64 %spec.select.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %bb17

bb14.i.i.i:                                       ; preds = %bb5.critedge.i
  %x.i.i.i17 = load i8, ptr %_24.sroa.0.1, align 1, !noalias !1650, !noundef !37
  %_6.i.i.i18 = icmp sgt i8 %x.i.i.i17, -1
  br i1 %_6.i.i.i18, label %bb3.i.i.i30, label %bb4.i.i.i19

bb4.i.i.i19:                                      ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i17, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %_7.i10.i.i.i = icmp ne ptr %spec.select, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i)
  %y.i.i.i20 = load i8, ptr %spec.select, align 1, !noalias !1650, !noundef !37
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i21 = and i8 %y.i.i.i20, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i21 to i32
  %41 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i17, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i22, label %bb17

bb3.i.i.i30:                                      ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i17 to i32
  br label %bb17

bb6.i.i.i22:                                      ; preds = %bb4.i.i.i19
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i23 = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1650, !noundef !37
  %_40.i.i.i24 = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i25 = and i8 %z.i.i.i23, 63
  %_41.i.i.i26 = zext nneg i8 %_42.i.i.i25 to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i24, %_41.i.i.i26
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %42 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i17, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i27, label %bb17

bb8.i.i.i27:                                      ; preds = %bb6.i.i.i22
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i28 = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1650, !noundef !37
  %_26.i.i.i29 = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i29, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i28, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %43 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %bb17

bb17:                                             ; preds = %bb8.i.i.i27, %bb6.i.i.i22, %bb3.i.i.i30, %bb4.i.i.i19, %bb5.critedge.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i"
  %_0.sroa.0.0.i = phi i32 [ 1114112, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i" ], [ %_7.i.i.i, %bb3.i.i.i30 ], [ 1114112, %bb5.critedge.i ], [ %43, %bb8.i.i.i27 ], [ %42, %bb6.i.i.i22 ], [ %41, %bb4.i.i.i19 ]
  switch i32 %_0.sroa.0.0.i, label %bb32 [
    i32 1114112, label %bb2.i7.invoke
    i32 49, label %bb19
  ], !prof !1643

bb19:                                             ; preds = %bb17
  %pos_from_right = sub i64 %_0.i, %iter.sroa.4.038
  %_30 = and i64 %pos_from_right, 3
  switch i64 %_30, label %default.unreachable42 [
    i64 1, label %bb20
    i64 2, label %bb22
    i64 3, label %bb24
    i64 0, label %bb26
  ]

default.unreachable42:                            ; preds = %bb19
  unreachable

bb32:                                             ; preds = %bb17, %bb20, %bb24, %bb26, %bb22
  %sum.sroa.0.1 = phi i32 [ %44, %bb20 ], [ %45, %bb22 ], [ %46, %bb24 ], [ %47, %bb26 ], [ %sum.sroa.0.039, %bb17 ]
  %_0.i.i.i.i.not.not = icmp eq i64 %iter.sroa.4.141, 0
  %_0.i1.i.i.i = add i64 %iter.sroa.4.141, -1
  %iter.sroa.4.1 = tail call i64 @llvm.usub.sat.i64(i64 %iter.sroa.4.141, i64 1)
  br i1 %_0.i.i.i.i.not.not, label %bb14.loopexit, label %bb13

bb20:                                             ; preds = %bb19
  %44 = add i32 %sum.sroa.0.039, 2
  br label %bb32

bb22:                                             ; preds = %bb19
  %45 = add i32 %sum.sroa.0.039, 4
  br label %bb32

bb24:                                             ; preds = %bb19
  %46 = add i32 %sum.sroa.0.039, 8
  br label %bb32

bb26:                                             ; preds = %bb19
  %47 = add i32 %sum.sroa.0.039, 6
  br label %bb32

terminate:                                        ; preds = %cleanup
  %48 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable
}
