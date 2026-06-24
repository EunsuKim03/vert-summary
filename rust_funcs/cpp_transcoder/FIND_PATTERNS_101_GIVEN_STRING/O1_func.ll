define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_40 = alloca [16 x i8], align 8
  %_33 = alloca [16 x i8], align 8
  %_25 = alloca [16 x i8], align 8
  %_16 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %0, align 8, !alias.scope !1661, !nonnull !15, !noundef !15
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %len.i.i = load i64, ptr %1, align 8, !alias.scope !1661, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  %_7.i.i.i = icmp samesign ne i64 %len.i.i, 0
  %_4.sroa.0.0.idx = zext i1 %_7.i.i.i to i64
  %_4.sroa.0.0 = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_4.sroa.0.0.idx
  br i1 %_7.i.i.i, label %bb14.i.i, label %bb3

cleanup:                                          ; preds = %bb2.i21.invoke
  %2 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h96e10618b9544c17E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup
  %3 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %terminate.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h96e10618b9544c17E.exit.i": ; preds = %cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate

bb14.i.i:                                         ; preds = %start
  %x.i.i = load i8, ptr %_6.i.i, align 1, !noalias !1666, !noundef !15
  %_6.i.i25 = icmp sgt i8 %x.i.i, -1
  br i1 %_6.i.i25, label %bb3.i.i, label %bb4.i.i

bb4.i.i:                                          ; preds = %bb14.i.i
  %_30.i.i = and i8 %x.i.i, 31
  %init.i.i = zext nneg i8 %_30.i.i to i32
  %5 = icmp ne i64 %len.i.i, 1
  tail call void @llvm.assume(i1 %5)
  %y.i.i = load i8, ptr %_4.sroa.0.0, align 1, !noalias !1666, !noundef !15
  %_34.i.i = shl nuw nsw i32 %init.i.i, 6
  %_36.i.i = and i8 %y.i.i, 63
  %_35.i.i = zext nneg i8 %_36.i.i to i32
  %6 = or disjoint i32 %_34.i.i, %_35.i.i
  %_13.i.i = icmp ugt i8 %x.i.i, -33
  br i1 %_13.i.i, label %bb6.i.i, label %bb3

bb3.i.i:                                          ; preds = %bb14.i.i
  %_7.i.i = zext nneg i8 %x.i.i to i32
  br label %bb3

bb6.i.i:                                          ; preds = %bb4.i.i
  %_18.i12.i.i = getelementptr inbounds nuw i8, ptr %_4.sroa.0.0, i64 1
  %_7.i17.i.i = icmp ne ptr %_18.i12.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i)
  %z.i.i = load i8, ptr %_18.i12.i.i, align 1, !noalias !1666, !noundef !15
  %_40.i.i = shl nuw nsw i32 %_35.i.i, 6
  %_42.i.i = and i8 %z.i.i, 63
  %_41.i.i = zext nneg i8 %_42.i.i to i32
  %y_z.i.i = or disjoint i32 %_40.i.i, %_41.i.i
  %_20.i.i = shl nuw nsw i32 %init.i.i, 12
  %7 = or disjoint i32 %y_z.i.i, %_20.i.i
  %_21.i.i = icmp ugt i8 %x.i.i, -17
  br i1 %_21.i.i, label %bb8.i.i, label %bb3

bb8.i.i:                                          ; preds = %bb6.i.i
  %_18.i19.i.i = getelementptr inbounds nuw i8, ptr %_4.sroa.0.0, i64 2
  %_7.i24.i.i = icmp ne ptr %_18.i19.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i)
  %w.i.i = load i8, ptr %_18.i19.i.i, align 1, !noalias !1666, !noundef !15
  %_26.i.i = shl nuw nsw i32 %init.i.i, 18
  %_25.i.i = and i32 %_26.i.i, 1835008
  %_46.i.i = shl nuw nsw i32 %y_z.i.i, 6
  %_48.i.i = and i8 %w.i.i, 63
  %_47.i.i = zext nneg i8 %_48.i.i to i32
  %_27.i.i = or disjoint i32 %_46.i.i, %_47.i.i
  %8 = or disjoint i32 %_27.i.i, %_25.i.i
  br label %bb3

bb3:                                              ; preds = %bb8.i.i, %bb6.i.i, %bb3.i.i, %bb4.i.i, %start
  %spec.select.i = phi i32 [ %_7.i.i, %bb3.i.i ], [ 1114112, %start ], [ %8, %bb8.i.i ], [ %7, %bb6.i.i ], [ %6, %bb4.i.i ]
  %.not.i20 = icmp eq i32 %spec.select.i, 1114112
  br i1 %.not.i20, label %bb2.i21.invoke, label %bb5.preheader, !prof !1064

bb5.preheader:                                    ; preds = %bb3
  %_2.i = icmp sgt i64 %len.i.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_848 = icmp samesign ugt i64 %len.i.i, 1
  br i1 %_848, label %bb7.lr.ph, label %bb35

bb7.lr.ph:                                        ; preds = %bb5.preheader
  %9 = getelementptr inbounds nuw i8, ptr %_16, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %_25, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %_33, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %_40, i64 8
  br label %bb7

bb2.i21.invoke:                                   ; preds = %bb30, %bb20, %bb7, %bb14, %bb3
  %13 = phi ptr [ @alloc_96e6c3be7c4b30cbcf9d45c76c90bfd0, %bb3 ], [ @alloc_ac82f80029bf27fc51f4237a15f69319, %bb14 ], [ @alloc_7d3da418ee1397a0f65b17bb5bc78aaf, %bb30 ], [ @alloc_05b852704473c7b06816922e1f39e8c4, %bb20 ], [ @alloc_5d3d217d934ec1ed56891210cf4853c9, %bb7 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %13) #25
          to label %bb2.i21.cont unwind label %cleanup

bb2.i21.cont:                                     ; preds = %bb2.i21.invoke
  unreachable

bb35:                                             ; preds = %bb34, %bb5.preheader
  %counter.sroa.0.0.lcssa = phi i32 [ 0, %bb5.preheader ], [ %counter.sroa.0.1, %bb34 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd646daa662d33de7E.exit30" unwind label %cleanup.i.i26

cleanup.i.i26:                                    ; preds = %bb35
  %14 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i27

terminate.i.i27:                                  ; preds = %cleanup.i.i26
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h96e10618b9544c17E.exit.i", %cleanup.i.i26
  %common.resume.op = phi { ptr, i32 } [ %14, %cleanup.i.i26 ], [ %2, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h96e10618b9544c17E.exit.i" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd646daa662d33de7E.exit30": ; preds = %bb35
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %counter.sroa.0.0.lcssa

bb7:                                              ; preds = %bb7.lr.ph, %bb34
  %counter.sroa.0.051 = phi i32 [ 0, %bb7.lr.ph ], [ %counter.sroa.0.1, %bb34 ]
  %i.sroa.0.050 = phi i64 [ 1, %bb7.lr.ph ], [ %18, %bb34 ]
  %last.sroa.0.049 = phi i32 [ %spec.select.i, %bb7.lr.ph ], [ %_38, %bb34 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_16)
  store ptr %_6.i.i, ptr %_16, align 8
  store ptr %_7.i, ptr %9, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_14 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h51beb41ffd420c68E(ptr noalias noundef align 8 dereferenceable(16) %_16, i64 noundef %i.sroa.0.050)
  switch i32 %_14, label %bb29 [
    i32 1114112, label %bb2.i21.invoke
    i32 48, label %bb12
  ], !prof !1671

bb29:                                             ; preds = %bb7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  br label %bb30

bb12:                                             ; preds = %bb7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  %_20 = icmp eq i32 %last.sroa.0.049, 49
  br i1 %_20, label %bb14, label %bb30

bb30:                                             ; preds = %bb26, %bb25, %bb12, %bb29
  %i.sroa.0.1 = phi i64 [ %i.sroa.0.2, %bb25 ], [ %i.sroa.0.2, %bb26 ], [ %i.sroa.0.050, %bb12 ], [ %i.sroa.0.050, %bb29 ]
  %counter.sroa.0.1 = phi i32 [ %17, %bb25 ], [ %counter.sroa.0.051, %bb26 ], [ %counter.sroa.0.051, %bb12 ], [ %counter.sroa.0.051, %bb29 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_40)
  store ptr %_6.i.i, ptr %_40, align 8
  store ptr %_7.i, ptr %12, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_38 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h51beb41ffd420c68E(ptr noalias noundef align 8 dereferenceable(16) %_40, i64 noundef %i.sroa.0.1)
  %.not.i = icmp eq i32 %_38, 1114112
  br i1 %.not.i, label %bb2.i21.invoke, label %bb34, !prof !1064

bb14:                                             ; preds = %bb12, %bb19
  %i.sroa.0.2 = phi i64 [ %16, %bb19 ], [ %i.sroa.0.050, %bb12 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_25)
  store ptr %_6.i.i, ptr %_25, align 8
  store ptr %_7.i, ptr %10, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_23 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h51beb41ffd420c68E(ptr noalias noundef align 8 dereferenceable(16) %_25, i64 noundef %i.sroa.0.2)
  switch i32 %_23, label %bb20 [
    i32 1114112, label %bb2.i21.invoke
    i32 48, label %bb19
  ], !prof !1671

bb20:                                             ; preds = %bb14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_25)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_33)
  store ptr %_6.i.i, ptr %_33, align 8
  store ptr %_7.i, ptr %11, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_31 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h51beb41ffd420c68E(ptr noalias noundef align 8 dereferenceable(16) %_33, i64 noundef %i.sroa.0.2)
  switch i32 %_31, label %bb26 [
    i32 1114112, label %bb2.i21.invoke
    i32 49, label %bb25
  ], !prof !1671

bb19:                                             ; preds = %bb14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_25)
  %16 = add i64 %i.sroa.0.2, 1
  br label %bb14

bb26:                                             ; preds = %bb20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_33)
  br label %bb30

bb25:                                             ; preds = %bb20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_33)
  %17 = add i32 %counter.sroa.0.051, 1
  br label %bb30

bb34:                                             ; preds = %bb30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_40)
  %18 = add i64 %i.sroa.0.1, 1
  %_8 = icmp ult i64 %18, %len.i.i
  br i1 %_8, label %bb7, label %bb35

terminate:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h96e10618b9544c17E.exit.i"
  %19 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %cleanup.i.i, %terminate
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}
