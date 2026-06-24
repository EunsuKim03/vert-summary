define i1 @f_gold(i64 %n, i64 %k) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %n, !4936, !DIExpression(), !4940)
    #dbg_value(i64 %k, !4937, !DIExpression(), !4940)
    #dbg_value(i1 false, !4938, !DIExpression(), !4941)
  br label %for.loop, !dbg !4942

for.loop:                                         ; preds = %divbyzero.next6, %entry
  %0 = phi i64 [ %n, %entry ], [ %9, %divbyzero.next6 ], !dbg !4943
  %1 = phi i1 [ false, %entry ], [ %7, %divbyzero.next6 ], !dbg !4941
    #dbg_value(i64 %0, !4936, !DIExpression(), !4944)
  %2 = icmp ugt i64 %0, 0, !dbg !4945
  br i1 %2, label %for.body, label %for.done, !dbg !4942

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4936, !DIExpression(), !4946)
    #dbg_value(i64 %k, !4937, !DIExpression(), !4947)
  %3 = icmp eq i64 %k, 0, !dbg !4948
  br i1 %3, label %divbyzero.throw, label %divbyzero.next, !dbg !4948

divbyzero.next:                                   ; preds = %for.body
  %4 = urem i64 %0, %k, !dbg !4948
    #dbg_value(i64 %4, !4939, !DIExpression(), !4949)
    #dbg_value(i64 %4, !4939, !DIExpression(), !4950)
  %5 = icmp sgt i64 %4, 1, !dbg !4951
  br i1 %5, label %if.then, label %if.done, !dbg !4942

if.then:                                          ; preds = %divbyzero.next
  ret i1 false, !dbg !4952

if.done:                                          ; preds = %divbyzero.next
    #dbg_value(i64 %4, !4939, !DIExpression(), !4953)
  %6 = icmp eq i64 %4, 1, !dbg !4954
  br i1 %6, label %if.then1, label %if.done4, !dbg !4942

if.then1:                                         ; preds = %if.done
    #dbg_value(i1 %1, !4938, !DIExpression(), !4955)
  br i1 %1, label %if.then2, label %if.done3, !dbg !4942

if.then2:                                         ; preds = %if.then1
  ret i1 false, !dbg !4956

if.done3:                                         ; preds = %if.then1
    #dbg_value(i1 true, !4938, !DIExpression(), !4957)
  br label %if.done4, !dbg !4942

if.done4:                                         ; preds = %if.done3, %if.done
  %7 = phi i1 [ %1, %if.done ], [ true, %if.done3 ], !dbg !4941
    #dbg_value(i64 %k, !4937, !DIExpression(), !4958)
  %8 = icmp eq i64 %k, 0, !dbg !4959
  br i1 %8, label %divbyzero.throw5, label %divbyzero.next6, !dbg !4959

divbyzero.next6:                                  ; preds = %if.done4
  %9 = udiv i64 %0, %k, !dbg !4959
    #dbg_value(i64 %9, !4936, !DIExpression(), !4959)
  br label %for.loop, !dbg !4942

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4960

divbyzero.throw:                                  ; preds = %for.body
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4948
  unreachable, !dbg !4948

divbyzero.throw5:                                 ; preds = %if.done4
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4959
  unreachable, !dbg !4959
}
