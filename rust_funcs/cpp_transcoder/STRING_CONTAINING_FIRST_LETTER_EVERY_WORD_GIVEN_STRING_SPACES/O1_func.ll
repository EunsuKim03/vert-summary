define void @f_gold(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_34 = alloca [16 x i8], align 8
  %_24 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %result = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %result)
  store i64 0, ptr %result, align 8, !alias.scope !1661
  %_1.sroa.4.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %result, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1661
  %_1.sroa.5.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %result, i64 16
  store i64 0, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1661
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1664, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i37.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i37.not, label %bb8, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %_24, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %_34, i64 8
  br label %bb7

cleanup.i.i:                                      ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h611da46daeed8de3E.exit20"
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %terminate.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1472505831c19a9E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h611da46daeed8de3E.exit20"
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate

cleanup1.loopexit:                                ; preds = %bb2.i32
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1.loopexit.split-lp:                       ; preds = %bb2.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1:                                         ; preds = %cleanup1.loopexit.split-lp, %cleanup1.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup1.loopexit ], [ %lpad.loopexit.split-lp, %cleanup1.loopexit.split-lp ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %result)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1472505831c19a9E.exit.i16" unwind label %cleanup.i.i13

cleanup.i.i13:                                    ; preds = %cleanup1
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %result)
          to label %terminate.body unwind label %terminate.i.i14

terminate.i.i14:                                  ; preds = %cleanup.i.i13
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1472505831c19a9E.exit.i16": ; preds = %cleanup1
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %result)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h611da46daeed8de3E.exit20" unwind label %terminate

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h611da46daeed8de3E.exit20": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1472505831c19a9E.exit.i16"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1472505831c19a9E.exit.i" unwind label %cleanup.i.i

bb7:                                              ; preds = %bb7.lr.ph, %bb29
  %spec.select41 = phi i64 [ 1, %bb7.lr.ph ], [ %spec.select, %bb29 ]
  %v.sroa.0.040 = phi i32 [ 1, %bb7.lr.ph ], [ %v.sroa.0.1, %bb29 ]
  %iter.sroa.0.039 = phi i64 [ 0, %bb7.lr.ph ], [ %spec.select41, %bb29 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_17)
  %_6.i.i = load ptr, ptr %1, align 8, !alias.scope !1667, !nonnull !15, !noundef !15
  %len.i.i = load i64, ptr %0, align 8, !alias.scope !1667, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  store ptr %_6.i.i, ptr %_17, align 8
  store ptr %_7.i, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_15 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb3601c5abefbbf74E(ptr noalias noundef align 8 dereferenceable(16) %_17, i64 noundef %iter.sroa.0.039)
  switch i32 %_15, label %bb14 [
    i32 1114112, label %bb2.i.invoke
    i32 32, label %bb13
  ], !prof !1672

bb8:                                              ; preds = %bb29, %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %result, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %result)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h611da46daeed8de3E.exit25" unwind label %cleanup.i.i21

cleanup.i.i21:                                    ; preds = %bb8
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i22

terminate.i.i22:                                  ; preds = %cleanup.i.i21
  %10 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1472505831c19a9E.exit.i", %cleanup.i.i21
  %common.resume.op = phi { ptr, i32 } [ %9, %cleanup.i.i21 ], [ %lpad.phi, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1472505831c19a9E.exit.i" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h611da46daeed8de3E.exit25": ; preds = %bb8
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret void

bb14:                                             ; preds = %bb7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_24)
  store ptr %_6.i.i, ptr %_24, align 8
  store ptr %_7.i, ptr %3, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_22 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb3601c5abefbbf74E(ptr noalias noundef align 8 dereferenceable(16) %_24, i64 noundef %iter.sroa.0.039)
  switch i32 %_22, label %bb19 [
    i32 1114112, label %bb2.i.invoke
    i32 32, label %bb27
  ], !prof !1672

bb13:                                             ; preds = %bb7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  br label %bb29

bb27:                                             ; preds = %bb14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_24)
  br label %bb29

bb19:                                             ; preds = %bb14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_24)
  %_27 = icmp eq i32 %v.sroa.0.040, 1
  br i1 %_27, label %bb20, label %bb29

bb20:                                             ; preds = %bb19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_34)
  store ptr %_6.i.i, ptr %_34, align 8
  store ptr %_7.i, ptr %4, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_32 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb3601c5abefbbf74E(ptr noalias noundef align 8 dereferenceable(16) %_34, i64 noundef %iter.sroa.0.039)
  %.not.i = icmp eq i32 %_32, 1114112
  br i1 %.not.i, label %bb2.i.invoke, label %bb24, !prof !1064

bb2.i.invoke:                                     ; preds = %bb20, %bb14, %bb7
  %11 = phi ptr [ @alloc_8faa6c0b7533f1bb8f508d38d11be12e, %bb7 ], [ @alloc_bad3a55fe39c80b1e3ff6e559cfec948, %bb14 ], [ @alloc_af7177f9bf2cba357eba10f755c7c124, %bb20 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %11) #25
          to label %bb2.i.cont unwind label %cleanup1.loopexit.split-lp

bb2.i.cont:                                       ; preds = %bb2.i.invoke
  unreachable

bb24:                                             ; preds = %bb20
  %len.i = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1673, !noundef !15
  %_14.i = icmp sgt i64 %len.i, -1
  call void @llvm.assume(i1 %_14.i)
  %_16.i = icmp samesign ult i32 %_32, 128
  br i1 %_16.i, label %bb2.i32, label %bb3.i

bb3.i:                                            ; preds = %bb24
  %_17.i = icmp samesign ult i32 %_32, 2048
  br i1 %_17.i, label %bb2.i32, label %bb4.i

bb4.i:                                            ; preds = %bb3.i
  %_18.i = icmp samesign ult i32 %_32, 65536
  %..i = select i1 %_18.i, i64 3, i64 4
  br label %bb2.i32

bb2.i32:                                          ; preds = %bb4.i, %bb3.i, %bb24
  %ch_len.sroa.0.0.i = phi i64 [ 1, %bb24 ], [ %..i, %bb4.i ], [ 2, %bb3.i ]
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %result, i64 noundef %ch_len.sroa.0.0.i)
          to label %.noexc35 unwind label %cleanup1.loopexit

.noexc35:                                         ; preds = %bb2.i32
  %_20.i = load ptr, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1673, !nonnull !15, !noundef !15
  %count.i = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1673, !noundef !15
  %_21.i = icmp sgt i64 %count.i, -1
  call void @llvm.assume(i1 %_21.i)
  %_8.i = getelementptr inbounds nuw i8, ptr %_20.i, i64 %count.i
  br i1 %_16.i, label %bb12.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %.noexc35
  %_29.i.i = icmp samesign ult i32 %_32, 2048
  %12 = trunc i32 %_32 to i8
  %_5.i.i = and i8 %12, 63
  %last1.i.i = or disjoint i8 %_5.i.i, -128
  %_10.i.i = lshr i32 %_32, 6
  %13 = trunc i32 %_10.i.i to i8
  %_8.i.i = and i8 %13, 63
  %last2.i.i = or disjoint i8 %_8.i.i, -128
  %_14.i.i = lshr i32 %_32, 12
  %14 = trunc i32 %_14.i.i to i8
  %_12.i.i = and i8 %14, 63
  %last3.i.i = or disjoint i8 %_12.i.i, -128
  %_18.i.i = lshr i32 %_32, 18
  %_16.i.i = trunc nuw nsw i32 %_18.i.i to i8
  %last4.i.i = or disjoint i8 %_16.i.i, -16
  br i1 %_29.i.i, label %bb1.i.i34, label %bb2.i.i33

bb12.i.i:                                         ; preds = %.noexc35
  %15 = trunc nuw nsw i32 %_32 to i8
  store i8 %15, ptr %_8.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb2.i.i33:                                        ; preds = %bb7.i.i
  %_30.i.i = icmp samesign ult i32 %_32, 65536
  br i1 %_30.i.i, label %bb3.i.i, label %bb4.i.i

bb1.i.i34:                                        ; preds = %bb7.i.i
  %16 = or disjoint i8 %13, -64
  store i8 %16, ptr %_8.i, align 1
  %_21.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last1.i.i, ptr %_21.i.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb4.i.i:                                          ; preds = %bb2.i.i33
  store i8 %last4.i.i, ptr %_8.i, align 1
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last3.i.i, ptr %_25.i.i, align 1
  %_26.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last2.i.i, ptr %_26.i.i, align 1
  %_27.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 3
  store i8 %last1.i.i, ptr %_27.i.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb3.i.i:                                          ; preds = %bb2.i.i33
  %17 = or disjoint i8 %14, -32
  store i8 %17, ptr %_8.i, align 1
  %_23.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last2.i.i, ptr %_23.i.i, align 1
  %_24.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last1.i.i, ptr %_24.i.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit: ; preds = %bb12.i.i, %bb1.i.i34, %bb4.i.i, %bb3.i.i
  %new_len.i = add nuw i64 %ch_len.sroa.0.0.i, %len.i
  store i64 %new_len.i, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1673
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_34)
  br label %bb29

bb29:                                             ; preds = %bb19, %bb27, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit, %bb13
  %v.sroa.0.1 = phi i32 [ 1, %bb13 ], [ 0, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit ], [ 0, %bb19 ], [ %v.sroa.0.040, %bb27 ]
  %_0.i.i.i = icmp ult i64 %spec.select41, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select41, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb7, label %bb8

terminate:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1472505831c19a9E.exit.i16", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1472505831c19a9E.exit.i"
  %18 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %terminate, %cleanup.i.i13, %cleanup.i.i
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}
