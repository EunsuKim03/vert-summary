define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str, i32 noundef %n) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %len = load i64, ptr %0, align 8, !noundef !23
  %_6 = icmp sgt i64 %len, -1
  tail call void @llvm.assume(i1 %_6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1046, !alias.scope !1047, !noalias !1050, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha537421ad80c1202E.exit", label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %1, align 8, !alias.scope !1047, !noalias !1050, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1052
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha537421ad80c1202E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha537421ad80c1202E.exit": ; preds = %start, %bb2.i.i.i3.i.i
  %_5 = sext i32 %n to i64
  %_4.not = icmp uge i64 %len, %_5
  %. = zext i1 %_4.not to i32
  ret i32 %.
}
