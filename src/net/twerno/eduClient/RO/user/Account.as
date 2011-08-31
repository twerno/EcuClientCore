package net.twerno.eduClient.RO.user {
	import mx.collections.ArrayCollection;
	import mx.collections.Sort;
	import mx.collections.SortField;
	import mx.utils.ObjectUtil;
	
	import net.twerno.eduClient.RO.ROOEntity;
	
	import pl.twerno.commLib.helpers.CollectionHelper;
	
	import spark.components.Group;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.user.entity.Account")]
	public class Account extends ROOEntity {
		public var username : String;
		
		public var enabled : Boolean = true;
		
		public var roles : ArrayCollection = new ArrayCollection();
		
		public var grupy : ArrayCollection = new ArrayCollection();
		
		public var password : String;
		
		public var salt : String;
		
		public function Account():void {
			super();
			
			var sort:Sort = new Sort();
			sort.fields = [new SortField(null, true)];
			roles.sort = sort;
			
			sort = new Sort();
			sort.fields = [new SortField('nazwa', true)];
			grupy.sort = sort;
		}
		
		public function toString():String {
			return detailedToString();
		}
		
		public function hasGroup(grupaName:String):Boolean {
			return CollectionHelper.arayCollectionContains(grupy, 'nazwa', grupaName);
		}
		
		public function hasRole(roleName: String):Boolean {
			for each (var role:String in roles)
				if (role == roleName)
					return true;
			return false;	
		}
		
		public function dodajRole(roleName: String):Boolean {
			if (hasRole(roleName))
				return false;
			roles.addItem(roleName);
			roles.refresh();
			return true;
		}
		
		public function usunRole(roleName: String):Boolean {
			if (!hasRole(roleName))
				return false;

			for (var i:int = roles.length -1; i >= 0; i--)
				if (roles.getItemAt(i) == roleName)
					roles.removeItemAt(i);
			return true;
		}
		
		public function dodajGrupe(grupa:Grupa):Boolean {
			if (hasGroup(grupa.nazwa))
				return false;
			grupy.addItem(grupa);
			grupy.refresh();
			return true;
		}
		
		public function usunGrupe(groupName: String):Boolean {
			if (!hasGroup(groupName))
				return false;

			for (var i:int = grupy.length -1; i >= 0; i--)
				if ((grupy.getItemAt(i) as Grupa).nazwa == groupName)
					grupy.removeItemAt(i);
			return true;
		}
		
		public function kopia():Account {
			var result:Account = new Account();
			result.enabled = enabled;
			result.id = id;
			result.password = password;
			result.salt = salt;
			result.username = username;
			result.version = version;
			for each (var grupa:Grupa in grupy)
				result.grupy.addItem(grupa);
			for each (var rola:String in roles)
				result.roles.addItem(rola);

			return result;
		}
		
		public function przepiszZ(account:Account):void {
			enabled  = account.enabled;
			id       = account.id;
			password = account.password;
			salt     = account.salt;
			username = account.username;
			version  = account.version;
			grupy.removeAll();
			roles.removeAll();
			for each (var grupa:Grupa in account.grupy)
				grupy.addItem(grupa);

			for each (var rola:String in account.roles)
				roles.addItem(rola);
		}
	}
}