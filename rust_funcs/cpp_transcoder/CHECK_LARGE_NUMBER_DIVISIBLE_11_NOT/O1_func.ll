define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_28 = alloca [16 x i8], align 8
  %_20 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i16.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i16.not, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %1, align 8, !nonnull !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_0.i
  %2 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  %_7.i10 = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_0.i
  %3 = getelementptr inbounds nuw i8, ptr %_20, i64 8
  br label %bb6

cleanup:                                          ; preds = %bb2.i5.invoke
  %4 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd7690ed170c92de7E"(ptr noalias noundef align 8 dereferenceable(24) %str) #29
          to label %common.resume unwind label %terminate

bb6:                                              ; preds = %bb6.lr.ph, %bb18
  %spec.select21 = phi i64 [ 1, %bb6.lr.ph ], [ %spec.select, %bb18 ]
  %odd_dig_sum.sroa.0.020 = phi i32 [ 0, %bb6.lr.ph ], [ %odd_dig_sum.sroa.0.1, %bb18 ]
  %even_dig_sum.sroa.0.019 = phi i32 [ 0, %bb6.lr.ph ], [ %even_dig_sum.sroa.0.1, %bb18 ]
  %iter.sroa.0.018 = phi i64 [ 0, %bb6.lr.ph ], [ %spec.select21, %bb18 ]
  %_14 = and i64 %iter.sroa.0.018, 1
  %_13 = icmp eq i64 %_14, 0
  br i1 %_13, label %bb8, label %bb13

bb7:                                              ; preds = %bb18, %start
  %even_dig_sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %even_dig_sum.sroa.0.1, %bb18 ]
  %odd_dig_sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %odd_dig_sum.sroa.0.1, %bb18 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd7690ed170c92de7E.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb7
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable

common.resume:                                    ; preds = %cleanup, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %5, %cleanup.i.i ], [ %4, %cleanup ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd7690ed170c92de7E.exit": ; preds = %bb7
  %_33 = sub i32 %odd_dig_sum.sroa.0.0.lcssa, %even_dig_sum.sroa.0.0.lcssa
  %_32 = urem i32 %_33, 11
  %_31 = icmp eq i32 %_32, 0
  %_0 = zext i1 %_31 to i32
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %_0

bb13:                                             ; preds = %bb6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_28)
  store ptr %_6.i.i, ptr %_28, align 8
  store ptr %_7.i, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_26 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h5faab260dc5c12e9E(ptr noalias noundef align 8 dereferenceable(16) %_28, i64 noundef %iter.sroa.0.018)
  %.not.i4 = icmp eq i32 %_26, 1114112
  br i1 %.not.i4, label %bb2.i5.invoke, label %bb17, !prof !1064

bb8:                                              ; preds = %bb6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_20)
  store ptr %_6.i.i, ptr %_20, align 8
  store ptr %_7.i10, ptr %3, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_18 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h5faab260dc5c12e9E(ptr noalias noundef align 8 dereferenceable(16) %_20, i64 noundef %iter.sroa.0.018)
  %.not.i = icmp eq i32 %_18, 1114112
  br i1 %.not.i, label %bb2.i5.invoke, label %bb12, !prof !1064

bb2.i5.invoke:                                    ; preds = %bb8, %bb13
  %7 = phi ptr [ @alloc_4e63d36c90f326fa6ac604d323f137d3, %bb13 ], [ @alloc_c659836f6953a930a3f6ba7fae26ee32, %bb8 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %7) #26
          to label %bb2.i5.cont unwind label %cleanup

bb2.i5.cont:                                      ; preds = %bb2.i5.invoke
  unreachable

bb17:                                             ; preds = %bb13
  %_23 = add i32 %even_dig_sum.sroa.0.019, -48
  %8 = add i32 %_23, %_26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_28)
  br label %bb18

bb18:                                             ; preds = %bb12, %bb17
  %even_dig_sum.sroa.0.1 = phi i32 [ %even_dig_sum.sroa.0.019, %bb12 ], [ %8, %bb17 ]
  %odd_dig_sum.sroa.0.1 = phi i32 [ %9, %bb12 ], [ %odd_dig_sum.sroa.0.020, %bb17 ]
  %_0.i.i.i = icmp ult i64 %spec.select21, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select21, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7

bb12:                                             ; preds = %bb8
  %_15 = add i32 %odd_dig_sum.sroa.0.020, -48
  %9 = add i32 %_15, %_18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_20)
  br label %bb18

terminate:                                        ; preds = %cleanup
  %10 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable
}
